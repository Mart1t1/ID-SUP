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

class Schools {
  int id;
  int ranking;
  String name;
  String category;
  int intramuros;
  Coordinates coordinates;
  int womanprop;
  String imagepath;
  String website;
  int fees;
  Socials socials;
  Resume resume;

  Schools({
      this.id, 
      this.ranking, 
      this.name, 
      this.category, 
      this.intramuros, 
      this.coordinates, 
      this.womanprop, 
      this.imagepath, 
      this.website, 
      this.fees, 
      this.socials, 
      this.resume});

  Schools.fromJson(dynamic json) {
    id = json["id"];
    ranking = json["ranking"];
    name = json["name"];
    category = json["category"];
    intramuros = json["intramuros"];
    coordinates = json["coordinates"] != null ? Coordinates.fromJson(json["coordinates"]) : null;
    womanprop = json["womanprop"];
    imagepath = json["imagepath"];
    website = json["website"];
    fees = json["fees"];
    socials = json["socials"] != null ? Socials.fromJson(json["socials"]) : null;
    resume = json["resume"] != null ? Resume.fromJson(json["resume"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["ranking"] = ranking;
    map["name"] = name;
    map["category"] = category;
    map["intramuros"] = intramuros;
    if (coordinates != null) {
      map["coordinates"] = coordinates.toJson();
    }
    map["womanprop"] = womanprop;
    map["imagepath"] = imagepath;
    map["website"] = website;
    map["fees"] = fees;
    if (socials != null) {
      map["socials"] = socials.toJson();
    }
    if (resume != null) {
      map["resume"] = resume.toJson();
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
  String approxAddress;
  int since;
  int numberOfStudents;
  int numberOfForeigners;
  String history;
  List<String> majors;
  String mailAdress;
  int phone;

  Resume({
      this.approxAddress, 
      this.since, 
      this.numberOfStudents, 
      this.numberOfForeigners, 
      this.history, 
      this.majors, 
      this.mailAdress, 
      this.phone});

  Resume.fromJson(dynamic json) {
    approxAddress = json["approxAddress"];
    since = json["since"];
    numberOfStudents = json["numberOfStudents"];
    numberOfForeigners = json["numberOfForeigners"];
    history = json["history"];
    majors = json["majors"] != null ? json["majors"].cast<String>() : [];
    mailAdress = json["mailAdress"];
    phone = json["phone"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["approxAddress"] = approxAddress;
    map["since"] = since;
    map["numberOfStudents"] = numberOfStudents;
    map["numberOfForeigners"] = numberOfForeigners;
    map["history"] = history;
    map["majors"] = majors;
    map["mailAdress"] = mailAdress;
    map["phone"] = phone;
    return map;
  }

}

/// instagram : "https://www.instagram.com/telecom_paris/?hl=fr"
/// twitter : "https://twitter.com/TelecomParis_?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
/// facebook : "https://www.facebook.com/TelecomParis/"

class Socials {
  String instagram;
  String twitter;
  String facebook;

  Socials({
      this.instagram, 
      this.twitter, 
      this.facebook});

  Socials.fromJson(dynamic json) {
    instagram = json["instagram"];
    twitter = json["twitter"];
    facebook = json["facebook"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["instagram"] = instagram;
    map["twitter"] = twitter;
    map["facebook"] = facebook;
    return map;
  }

}

/// longitude : 48.716187071585495
/// latitude : 2.1993622960556736

class Coordinates {
  double longitude;
  double latitude;

  Coordinates({
      this.longitude, 
      this.latitude});

  Coordinates.fromJson(dynamic json) {
    longitude = json["longitude"];
    latitude = json["latitude"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["longitude"] = longitude;
    map["latitude"] = latitude;
    return map;
  }

}