import 'package:flutter/material.dart';
import 'package:main/Style/Style.dart';

Future<bool> DeleteAlert(context) async {
  var confirmation=false;
   await showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Delete!",style: Head1Text(colorOrange),),
          content: Text("Once delete, you can't get it back",style: Head6Text(colorDarkBlue),),
          actions: [
            OutlinedButton(
              onPressed: (){
                confirmation=true;
                Navigator.pop(context);
              },
                child: Text("Yes")
            ),
            OutlinedButton(
              onPressed: (){
                confirmation=false;
                Navigator.pop(context);
              },
              child: Text("No")
            )
          ],
        );
      }
  );
  return confirmation;
}