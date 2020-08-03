import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Lütfen assets ayarlarınızı kendi projelerinize göre uygulayınız.
void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Tıklandı");
            },
            child: Icon(
              Icons.access_alarm,
              color: Colors.white,
            ),
          ),
          body: Column(
            children: <Widget>[
              Text(
                "Resim ve Buton",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              // Bütün satırın aynı genişlikte olduğunu sağlıyor.IntrinsicHeight
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset("assets/image/1.png"),
                            Text("Deneme2"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.network(
                                "https://img.freepik.com/free-vector/space-background-with-abstract-shape-stars_189033-30.jpg?size=626&ext=jpg"),
                            Text("Network"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-vector/space-background-with-abstract-shape-stars_189033-30.jpg?size=626&ext=jpg"),
                              radius: 30,
                            ),
                            Text("CircleAvatar"),
                            // Yuvarlaklık kazandırıyor fotoğrafa
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            //Yüklenirken gif göstermek için uygulanır.
                            FadeInImage.assetNetwork(
                                placeholder: "assets/image/lo.gif",
                                image:
                                    "https://fantazya.org/wp-content/uploads/2017/08/1920x1080-data-out-175-44796264-hd-wallpaper-1920x1080.jpg"),
                            Text("Network"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlutterLogo(
                              size: 60,
                              colors: Colors.deepOrange,
                            ),
                            Text("Network"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        color: Colors.red.shade200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              //Daha sonra bir şey ekleneceği zaman ondan öncesinde çarpı konmak için kullanılır.
                              child: Placeholder(
                                  color: Colors.red, strokeWidth: 3.0),
                            ),
                            Text("PlaceHolder"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    ),
  );
}
