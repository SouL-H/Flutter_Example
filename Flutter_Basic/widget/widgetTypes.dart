import 'package:flutter/material.dart';


//Bu yapıda bir sınır vardır 10-20 tane container eklediğimizde altta taşma olacaktır.
//Bu yüzden listwiew kullanılır.Ama geçiçi çözüm için bu kullanılıyor.
class Liste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              title: Text("Baslik"),
              subtitle: Text("Alt baslik"),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
        ),
        Divider(
          color: Colors.purple,
        ),
        Container(
          child: Card(
            color: Colors.teal.shade100,
            margin: EdgeInsets.all(10),
            elevation: 10, //Kartın alt tarafından çıkan gölgelik.
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.info),
              ),
              title: Text("Baslik"),
              subtitle: Text("Alt baslik"),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
        ),
        Divider(
          color: Colors.purple,
          height: 20,
        ),
        Container(
          child: Card(
            color: Colors.teal.shade100,
            margin: EdgeInsets.all(10),
            elevation: 10, //Kartın alt tarafından çıkan gölgelik.
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.info),
              ),
              title: Text("Baslik"),
              subtitle: Text("Alt baslik"),
              trailing: Icon(Icons.ac_unit),
            ),
          ),
        ),
      ],
    );
  }
}
