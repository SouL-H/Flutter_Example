import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class gridView extends StatelessWidget {
// İki card kaydırmak için kullanılan bir yöntemdirr
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            //Yazıyı kutunun ortasına getiri.
            alignment: Alignment.center,
            color: Colors.purple,
            child: Text(
              "Merhaba ${index+1}",
              textAlign: TextAlign.center,
            ),

          );
        });
  }
}
/*
*  //extent tam tersi bi sınırlama olursa kullanılır.
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      //Yana doğru kayar default aşağı doğru.
      scrollDirection: Axis.vertical,
      //10 px kenarlarda boşluklar
      padding: EdgeInsets.all(10),
      //Sutun arasındaki boşluk
      crossAxisSpacing: 20,
      //Satır arasındaki boşluk
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          //Yazıyı kutunun ortasına getirir.
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text("Merhaba",textAlign: TextAlign.center,),
        ),
        Container(
          //Yazıyı kutunun ortasına getirir.
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text("Merhaba",textAlign: TextAlign.center,),
        ),
        Container(
          //Yazıyı kutunun ortasına getirir.
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text("Merhaba",textAlign: TextAlign.center,),
        ),
        Container(
          //Yazıyı kutunun ortasına getirir.
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text("Merhaba",textAlign: TextAlign.center,),
        )
      ],
    );*/
