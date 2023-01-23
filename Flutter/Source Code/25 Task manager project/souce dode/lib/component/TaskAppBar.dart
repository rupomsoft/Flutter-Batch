import 'package:flutter/material.dart';
import 'package:taskmanager/style/style.dart';
import 'package:taskmanager/utility/utility.dart';

AppBar TaskAppBar(context){
  return AppBar(
        backgroundColor: colorGreen,
        flexibleSpace: Container(
          margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 24,
                child: ClipOval(
                  child: Image.memory(ShowBase64Image("data:image/jpeg;base64,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")),
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("RABBIL HASAN",style: Head7Text(colorWhite),),
                  Text("rabbilidlc@idlc.com",style: Head9Text(colorWhite),)
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_circle_outline)
          ),
          IconButton(
              onPressed: () async {
               await RemoveToken();
               Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);

              },
              icon: Icon(Icons.output)
          )
        ],

  );
}