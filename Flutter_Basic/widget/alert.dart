import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

class Alert extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileri();
    //seperated builderle aynıdır tek farkı iki elaman arasına widget konulacaksa bu kullanılabilir.
    return ListView.separated(
      itemCount: 30,
      //bu şekilde aslında reklam aralıklarını böyle geçebiliriz.
      separatorBuilder: (context, index) {
        if (index % 6 == 0 && index != 0) {
          return Container(
            height: 2,
            color: Colors.blue,
            margin: EdgeInsets.all(5),
          );
        } else {
          return Divider();
        }
      },
      itemBuilder: (context, index) => Card(
        color: index % 2 == 0 ? Colors.red.shade200 : Colors.indigo,
        elevation: 2,
        child: ListTile(
          leading: Icon(Icons.perm_contact_calendar),
          title: Text(tumOgrenciler[index]._isim),
          subtitle: Text(tumOgrenciler[index]._aciklama),
          trailing: Icon(Icons.add),
          onTap: () {
            debugPrint(tumOgrenciler[index].toString());
            //msjGoster(index);
            alertDialog(context, index);
          },
        ),
      ),
    );
  }

/*
return ListView.builder(
      itemCount: 15,
        itemBuilder: (context, index) => Card(
          color: index%2==0 ? Colors.red.shade200: Colors.indigo,
          elevation: 2,
            child: ListTile(leading:Icon(Icons.perm_contact_calendar),
            title: Text(tumOgrenciler[index]._isim),
            subtitle: Text(tumOgrenciler[index]._aciklama),
            trailing: Icon(Icons.add),
            ),
        ),
    ); */

  void ogrenciVerileri() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci: $index", "Ogrenci aciklamasi: $index ",
            index % 2 == 0 ? true : false));
  }

  void msjGoster(int index) {
    Fluttertoast.showToast(
        msg: tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialog(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        //boşlukta diyalog kapatılsın mı
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Baslik"),
            //Taşma önlemek için ekrana sığmadığında alttaki fonksiyon kullanılmaktadır.
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                Text("Öğrenci adi: ${tumOgrenciler[index]._isim}"),
                Text("Öğrenci adi: ${tumOgrenciler[index]._aciklama}"),
              ],
            )),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text("Tamam"),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                  RaisedButton(
                    child: Text("Kapat"),
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  )
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Seçilen öğrenci adi : $_isim açıklama : $_aciklama";
  }
}
