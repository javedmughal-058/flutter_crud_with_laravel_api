import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService{

  var serviceUrl = 'http://172.19.19.28:8000/api/';

  Future<http.Response> postData({required String apiUrl,required Map body})async{
    try{
      var url = Uri.parse(serviceUrl+apiUrl);
      var response = await http.post(url,body: body);
      return response;
    } on HttpException catch (error){
      throw error;
    } on SocketException catch (error){
      throw error;
    } on FormatException catch (error){
      throw error;
    } catch (error){
      throw error;
    }
  }


  Future<http.Response> getData({required String apiUrl})async{
    try{
      var url = Uri.parse(serviceUrl+apiUrl);
      var response = await http.get(url);
      return response;
    } on HttpException catch (error){
      throw error;
    } on SocketException catch (error){
      throw error;
    } on FormatException catch (error){
      throw error;
    } catch (error){
      throw error;
    }
  }

}