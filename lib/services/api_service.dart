import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  String nextPage = "http://rickandmortyapi.com/api/character/?page=1";

  Future<List> getData() async {
    final response = await dio.get(nextPage);
    List temp = List();
    nextPage = response.data["info"]["next"];
    for(int i = 0; i < response.data["results"].length; i++){
      temp.add(response.data["results"][i]);
    }

    return temp;
  }
}