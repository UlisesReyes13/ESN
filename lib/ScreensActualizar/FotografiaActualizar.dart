import 'dart:io';

import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genTextFolio.dart';
import 'package:esn/Comm/genTextQuestion.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/FotoModel.dart';
import 'package:esn/Screens/Resolucion.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/services/Utility.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FotografiaActualizar extends StatefulWidget {
  String folio;

  FotografiaActualizar(this.folio);

  @override
  State<FotografiaActualizar> createState() => _FotografiaState();
}

class _FotografiaState extends State<FotografiaActualizar> {

  File _image;
  final picker = ImagePicker();

  Future getImage() async{
    final pickedFile = await picker.getImage(source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 648,
        imageQuality: 50);

    setState(() {
      if(pickedFile != null){
        _image = File(pickedFile.path);
      }else{
        alertDialog(context, 'Imagen no Seleccionada');
      }
    });
  }

  actualizar() async{
    String foto64 = Utility.base64String(_image.readAsBytesSync());
    FotoModel BModel = FotoModel(
        folio: int.parse(widget.folio),
        fileFoto: foto64
    );
    DbHelper().upDateFoto(BModel).then((fotoModel) {
      alertDialog(context, "Se registro correctamente");
      Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){
        return new FotografiaActualizar(widget.folio);
      }
      ));
    }).catchError((error) {
      print(error);
      alertDialog(context, "Error: No se guardaron los datos");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Folio'),
                SizedBox(height: 5.0),
                getTextFolio(
                  controller: TextEditingController.fromValue(
                      TextEditingValue(text: widget.folio)),
                ),
                SizedBox(height: 10.0),
                getTextQuestion(question: 'Tomar fotografia'),
                Container(
                  child: _image == null
                      ? Text('Imagen No Seleccionda')
                      : Image.file(_image),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                    onPressed: getImage,
                    icon: Icon(Icons.add_a_photo,color: Colors.white,),
                    label: Text('Tomar Fotografia', style: TextStyle(color: Colors.white)
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton.icon(
                    onPressed: actualizar,
                    icon: Icon(Icons.arrow_circle_right_outlined,color: Colors.white),
                    label: Text('Actualizar', style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
