import 'dart:convert';
import 'package:flutter/services.dart';
import 'schools.dart';


// Fetch content from the json file
  Future<List<Schools>> readJson() async {

    final String response = await rootBundle.loadString('assets/schoolData.json');
    final data = await json.decode(response);
    List schools = data["ListofSchools"];
    return schools.map((entry) => Schools.fromJson(entry)).toList();
  }


//sort schools by ranking. Return list of index following ranking

List<int> sortByRanking (List <Schools> schools)
{
  var indexes = List(schools.length);
  int minIndex;

  for(int i = 0 ; i < schools.length ; i++)
  {
    int min = 10000;

    for(int j = 0 ; j < schools.length ; j++)
    {
      if(schools[j].ranking < min && indexes.indexOf(j) == -1)
      {
        min = schools[j].ranking;
        minIndex = j;
      }

      indexes[i] = minIndex;

    }
  
  }

  return indexes;

}

List <String> selMajors(List <String> majors, List <bool> selected)
{
  List <String> sel = [];
  for(int i = 0 ; i < majors.length ; i++)
  {
    if(selected[i])
      sel.add(majors[i]);
  }

  return sel;
}

bool hasCommonMajors (List <String> majors1, List <String> majors2)
{
  for(int i = 0 ; i < majors1.length ; i++)
  {
    for(int j = 0 ; j < majors2.length ; j++)
    {
      if(majors1[i] == majors2[j])
        return true;
    }
  }
  return false;
}

List <String> getMajors(List <Schools> schools)
{
  List <String> majors = new List();

  for(int i = 0 ; i < schools.length ; i++)
  {
    for(int j = 0 ; j < schools[i].resume.majors.length ; j++)
    {
      String major = schools[i].resume.majors[j];
      if(majors.indexOf(major) == -1)
      {
        majors.add(major);
      }
    }
  }

  majors.sort();

  return majors;

}
  //get Twitter profile picture'sURL
  

/*
  Future<String> getTwitterPP(Schools school)
  {
    String twitterID = school.socials.twitter.substring(school.socials.twitter.indexOf('twitter.com')+'twitter.com'.length, school.socials.twitter.indexOf('?'));
    final String _apikey = '
    final String _apisecretkey = '
    final String _bearerToken = '
    String _url = "https://api.twitter.com/2/users/by?usernames=$twitterID,"

    print(twitterID);




  }

  */
