import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Style/Style.dart';

var headers={"Content-Type": "application/json"};


Future<List> ProductGridViewListRequest() async {
  var url = Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
  var response = await http.get(url,headers:headers);
  if(response.statusCode==200 && json.decode(response.body)['status']=='success'){
    SuccessToast("Request Successful");
    return json.decode(response.body)['data'];
  }
  else{
    ErrorToast("Request Fail!");
    return [];
  }
}

Future<bool> ProductCreateRequest(PostBody) async {
  var url = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var body = json.encode(PostBody);
  var response = await http.post(url,headers:headers ,body: body);
  if(response.statusCode==200 && json.decode(response.body)['status']=='success'){
    SuccessToast("Request Successful");
    return true;
  }
  else{
    ErrorToast("Request Fail!");
    return false;
  }
}


Future<bool> ProductDeleteRequest(id) async {
  var url = Uri.parse("https://crud.teamrabbil.com/api/v1/DeleteProduct/"+id);
  var response = await http.get(url,headers:headers);
  if(response.statusCode==200 && json.decode(response.body)['status']=='success'){
    SuccessToast("Request Successful");
    return true;
  }
  else{
    ErrorToast("Request Fail!");
    return false;
  }
}



