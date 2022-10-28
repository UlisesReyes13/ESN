import 'package:esn/Model/VersionModel.dart';
import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/TablaFolios.dart';
import 'package:esn/services/category_services.dart';
import 'package:flutter/material.dart';
import 'package:esn/Comm/comHelper.dart';
import 'package:esn/Comm/genLoginSignupHeader.dart';
import 'package:esn/Comm/genTextFormField.dart';
import 'package:esn/DatabaseHandler/DbHelper.dart';
import 'package:esn/Model/UserModel.dart';
import 'package:esn/Screens/SignupForm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  final _formKey = new GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  var dbHelper;
  List<VersionModel> _Version = List<VersionModel>();
  @override
  void initState() {
    getAllVersion();
    super.initState();
    dbHelper = DbHelper();
  }

  getAllVersion() async {
    _Version = List<VersionModel>();
    var categories = await CategoryService().readVersion();
    categories.forEach((category) {
      setState(() {
        var categoryModel = VersionModel();
        categoryModel.version = category['version'];
        _Version.add(categoryModel);
      });
    });
  }

  login() async {

    if(_Version.map((e) => e.version).first == "1.0.2"){
      String uid = _conUserId.text;
      String passwd = _conPassword.text;

      if (uid.isEmpty) {
        alertDialog(context, "Por favor introduzca su usuario");
      } else if (passwd.isEmpty) {
        alertDialog(context, "Por favor introduzca la contraseña");
      } else {
        await dbHelper.getLoginUser(uid, passwd).then((userData) {
          if (userData != null) {
            setSP(userData).whenComplete(() {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => TablaFolios()),
                      (Route<dynamic> route) => false);
            });
          } else {
            alertDialog(context, "Error: Usuario no registrado");
          }
        }).catchError((error) {
          print(error);
          alertDialog(context, "Error: Fallo del login");
        });
      }
    }else{
      alertDialog(context, "Error: Las versiones no coinciden");
    }

  }

  Future setSP(UserModel user) async {
    final SharedPreferences sp = await _pref;

    sp.setInt("idUsuario", user.idUsuario);
    sp.setString("nombreUsuario", user.nombreUsuario);
    sp.setString("nombre", user.nombre);
    sp.setString("apellidoP", user.apellidoP);
    sp.setString("apellidoM", user.apellidoM);
    sp.setString("rol", user.rol);
    sp.setString("Password", user.Password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESN V1.0.1'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                genLoginSignupHeader('Login'),
                getTextFormField(
                    controller: _conUserId,
                    icon: Icons.person,
                    hintName: 'Nombre de Usuario'),
                SizedBox(height: 10.0),
                getTextFormField(
                  controller: _conPassword,
                  icon: Icons.lock,
                  hintName: 'Contraseña',
                  isObscureText: true,
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: login,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('No tienes cuenta? '),
                      TextButton(
                        child: Text('Registrar',
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignupForm()));
                        },
                      )
                    ],
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
