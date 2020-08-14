import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class boxDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              //Yazıyı kutunun ortasına getirir.
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                //5 px kutu kenarı kalınlık
                border: Border.all(color: Colors.blueAccent,width: 5,style: BorderStyle.solid),
                  //Çember kullanılırsa bu özellik devre dışı bırakılır.
                  borderRadius: BorderRadius.all(Radius.circular(21)),
                  boxShadow: [new BoxShadow(
                    color: Colors.red,
                    offset: Offset(10,5),
                    blurRadius: 10,
                  )],
                  //Çember için
                  //shape: BoxShape.circle,
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/image/1.png"),
                      //Resmi üste taşır.
                      alignment: Alignment.topCenter,
                      //resim genişliklerini ayarlar
                      fit: BoxFit.fill)),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Merhaba",
                  textAlign: TextAlign.center,
                ),
              ));
        });
  }
}
