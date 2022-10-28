class VersionModel{
  String version;


  VersionModel({this.version});

  Map<String, dynamic> toMap(){
    return{
      'Version' : version,

    };
  }

  VersionModel.fromMap(Map<String, dynamic> map){
    version = map['version'];

  }
}