/// id : 0
/// ranking : 0
/// name : "Télécom Paris"
/// category : "inge"
/// intramuros : 0
/// coordinates : {"longitude":48.716187071585495,"latitude":2.1993622960556736}
/// womanprop : 19
/// imagepath : "onverraplustard"
/// website : "https://www.telecom-paris.fr/"
/// fees : 2650
/// socials : {"instagram":"https://www.instagram.com/telecom_paris/?hl=fr","twitter":"https://twitter.com/TelecomParis_?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor","facebook":"https://www.facebook.com/TelecomParis/"}
/// resume : {"approxAddress":"Palaiseau","since":1878,"numberOfStudents":1360,"numberOfForeigners":-1,"history":"In 1845, Alphonse Foy, director of telegraphic lines, proposed a school specializing in telegraphy for Polytechnicians. However, his proposition was rejected. The school was founded on 12 July 1878 as the École professionnelle supérieure des postes et télégraphes (EPSPT). In 1912, the school's name was changed to École supérieure des postes et télégraphes (ESPT)","majors":["computer science","philosophy"],"mailAdress":"contact@telecom-paris.fr","phone":33175319201}

class School {
  int _id;
  int _ranking;
  String _name;
  String _category;
  int _intramuros;
  Coordinates _coordinates;
  int _womanprop;
  String _imagepath;
  String _website;
  int _fees;
  Socials _socials;
  Resume _resume;

  int get id => _id;
  int get ranking => _ranking;
  String get name => _name;
  String get category => _category;
  int get intramuros => _intramuros;
  Coordinates get coordinates => _coordinates;
  int get womanprop => _womanprop;
  String get imagepath => _imagepath;
  String get website => _website;
  int get fees => _fees;
  Socials get socials => _socials;
  Resume get resume => _resume;

  School({
      int id, 
      int ranking, 
      String name, 
      String category, 
      int intramuros, 
      Coordinates coordinates, 
      int womanprop, 
      String imagepath, 
      String website, 
      int fees, 
      Socials socials, 
      Resume resume}){
    _id = id;
    _ranking = ranking;
    _name = name;
    _category = category;
    _intramuros = intramuros;
    _coordinates = coordinates;
    _womanprop = womanprop;
    _imagepath = imagepath;
    _website = website;
    _fees = fees;
    _socials = socials;
    _resume = resume;
}

  School.fromJson(dynamic json) {
    _id = json["id"];
    _ranking = json["ranking"];
    _name = json["name"];
    _category = json["category"];
    _intramuros = json["intramuros"];
    _coordinates = json["coordinates"] != null ? Coordinates.fromJson(json["coordinates"]) : null;
    _womanprop = json["womanprop"];
    _imagepath = json["imagepath"];
    _website = json["website"];
    _fees = json["fees"];
    _socials = json["socials"] != null ? Socials.fromJson(json["socials"]) : null;
    _resume = json["resume"] != null ? Resume.fromJson(json["resume"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["ranking"] = _ranking;
    map["name"] = _name;
    map["category"] = _category;
    map["intramuros"] = _intramuros;
    if (_coordinates != null) {
      map["coordinates"] = _coordinates.toJson();
    }
    map["womanprop"] = _womanprop;
    map["imagepath"] = _imagepath;
    map["website"] = _website;
    map["fees"] = _fees;
    if (_socials != null) {
      map["socials"] = _socials.toJson();
    }
    if (_resume != null) {
      map["resume"] = _resume.toJson();
    }
    return map;
  }

}

/// approxAddress : "Palaiseau"
/// since : 1878
/// numberOfStudents : 1360
/// numberOfForeigners : -1
/// history : "In 1845, Alphonse Foy, director of telegraphic lines, proposed a school specializing in telegraphy for Polytechnicians. However, his proposition was rejected. The school was founded on 12 July 1878 as the École professionnelle supérieure des postes et télégraphes (EPSPT). In 1912, the school's name was changed to École supérieure des postes et télégraphes (ESPT)"
/// majors : ["computer science","philosophy"]
/// mailAdress : "contact@telecom-paris.fr"
/// phone : 33175319201

class Resume {
  String _approxAddress;
  int _since;
  int _numberOfStudents;
  int _numberOfForeigners;
  String _history;
  List<String> _majors;
  String _mailAdress;
  int _phone;

  String get approxAddress => _approxAddress;
  int get since => _since;
  int get numberOfStudents => _numberOfStudents;
  int get numberOfForeigners => _numberOfForeigners;
  String get history => _history;
  List<String> get majors => _majors;
  String get mailAdress => _mailAdress;
  int get phone => _phone;

  Resume({
      String approxAddress, 
      int since, 
      int numberOfStudents, 
      int numberOfForeigners, 
      String history, 
      List<String> majors, 
      String mailAdress, 
      int phone}){
    _approxAddress = approxAddress;
    _since = since;
    _numberOfStudents = numberOfStudents;
    _numberOfForeigners = numberOfForeigners;
    _history = history;
    _majors = majors;
    _mailAdress = mailAdress;
    _phone = phone;
}

  Resume.fromJson(dynamic json) {
    _approxAddress = json["approxAddress"];
    _since = json["since"];
    _numberOfStudents = json["numberOfStudents"];
    _numberOfForeigners = json["numberOfForeigners"];
    _history = json["history"];
    _majors = json["majors"] != null ? json["majors"].cast<String>() : [];
    _mailAdress = json["mailAdress"];
    _phone = json["phone"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["approxAddress"] = _approxAddress;
    map["since"] = _since;
    map["numberOfStudents"] = _numberOfStudents;
    map["numberOfForeigners"] = _numberOfForeigners;
    map["history"] = _history;
    map["majors"] = _majors;
    map["mailAdress"] = _mailAdress;
    map["phone"] = _phone;
    return map;
  }

}

/// instagram : "https://www.instagram.com/telecom_paris/?hl=fr"
/// twitter : "https://twitter.com/TelecomParis_?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
/// facebook : "https://www.facebook.com/TelecomParis/"

class Socials {
  String _instagram;
  String _twitter;
  String _facebook;

  String get instagram => _instagram;
  String get twitter => _twitter;
  String get facebook => _facebook;

  Socials({
      String instagram, 
      String twitter, 
      String facebook}){
    _instagram = instagram;
    _twitter = twitter;
    _facebook = facebook;
}

  Socials.fromJson(dynamic json) {
    _instagram = json["instagram"];
    _twitter = json["twitter"];
    _facebook = json["facebook"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["instagram"] = _instagram;
    map["twitter"] = _twitter;
    map["facebook"] = _facebook;
    return map;
  }

}

/// longitude : 48.716187071585495
/// latitude : 2.1993622960556736

class Coordinates {
  double _longitude;
  double _latitude;

  double get longitude => _longitude;
  double get latitude => _latitude;

  Coordinates({
      double longitude, 
      double latitude}){
    _longitude = longitude;
    _latitude = latitude;
}

  Coordinates.fromJson(dynamic json) {
    _longitude = json["longitude"];
    _latitude = json["latitude"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["longitude"] = _longitude;
    map["latitude"] = _latitude;
    return map;
  }

}