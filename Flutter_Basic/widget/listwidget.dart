import 'package:flutter/material.dart';

//Az elamanlarda bu yöntem kullanılır.Çok elemanda performans kaybına sebep oluyor.
class Listeleme extends StatelessWidget {
  // Liste kaynakları
  List<int> nolar = List.generate(8, (index) => index );
  List<String> listebaslik = List.generate(
      8, (index) => "Alt baslik:  ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView(
      // map o anki elamanları tek tek alır  farklı bir şeye dönüştürür.
        children: nolar.map((eleman) =>
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade100,
                    margin: EdgeInsets.all(10),
                    elevation: 10, //Kartın alt tarafından çıkan gölgelik.
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.info),
                      ),
                      title: Text("Baslik: $eleman"),
                      subtitle: Text(listebaslik[eleman]),
                      trailing: Icon(Icons.ac_unit),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.purple,
                ),
              ],
            ),).toList(),
    );
  }
}
/*  <Widget>[

      ],
      */