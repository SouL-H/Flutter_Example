import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//setstate değişikliği tekrardan çalıştırılmasını sağlar.


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "Material App",
      home: MyHome(
        title: "Title",
      ),
    );
  }


}

class MyHome extends StatefulWidget{
  final String title;
  int sayac = 0;
  MyHome({this.title});
  @override
  State<StatefulWidget> createState(){
    return MyHomeState();
  }
}
class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDeger();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Tam ortada göster
          children: <Widget>[
            Text("Sayac:"),
            Text("${widget.sayac}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }

  void sayacDeger() {
    widget.sayac++;
    debugPrint("Deger:${widget.sayac}");
  }


}