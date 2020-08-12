import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListe extends StatelessWidget {
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
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
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
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);
}
