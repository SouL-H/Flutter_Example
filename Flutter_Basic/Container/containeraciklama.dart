// Aligment double değerleri alıyor.  X,Y kordinat düzlemi gibi
//Fakat farkı üst - olarak alınıyor.1,1 sağ alt 0,0 tam orta oluyor.
// Ya da Aligment.bottomleft ile de aynı işlem yapılıyor.


body: Center()
child: Container(
  color: Colors.green,
  child: Text(
    "Flutter",
    style: TextStyle(fontSize: 24),
    textAlign: TextAlign.center,
  ),
  constraints: BoxConstraints(
    maxHeight: 300.0, // Child yoksa bu kurallara uyar
    maxWidth: 200.0,
    minWidth: 150.0, // Çocuk olduğu zaman da bu kurallara uyar. Minimum bu kadar olmam lazım daha fazla küçülemem diyor.
    minWeight: 150.0
  ),
),

BoxConstraints.expand(
) //Bu fonksiyon kullanılarak scaffold genişliği kadar kendini büyütür.Taşma olmaz.


margin : EdgeIntets.all(10.0) // Dört bir taraftan 10 piksel boşluk veriyoruz.
EdgeIntets.only(top:50, left:20), // Belirtilen yönlerde  boşluk verebiliyoruz.
EdgeInsets.symmetric(horizontal:5, vertical: 70), //Horizoal sağ ve sol vertical üst ve alttan boşluk bırakır.

padding: EdgeInsets.all(30.0), //margin dış boşluklar , padding iç boşluklardan sınırlandırmak için kullanılıyor.
// Üç tane containeri yan yana alt alta koymak için Row yan yana, Column  alt alta kullanılır.

child: Row(
mainAxisSize: MainAxisSize.min,
children: <Widget>[
  Icon(),
  Icon(),
]),
// Yan yana iconlar sıralar tabi iconların içi dolu olmalı.
// Iconların tuttuğu yer kadar container alan , içerik kadar yer kaplaması için
// mainAxisSize: MainAxisSize.min, bu fonksiyonu kullanırız.

// Pixel taşmasında Exanded sınıf içine alındığı zaman iconlar ekrana sığması için iç içe geçirir.abstract

Expanded(
  child:Icon(), // bu şekilde kullanılıyor.
)

// Mevcut ikonları istediğimiz yerden başlatmak için mainAxisAligment kullanılır.
mainAxisAligment:MainAxisAligment.center,// ortadan başlatır.
//.spaceEvenly boşluğu eşit şekilde paylaştırır.
//.spaceBetween ilk baş ve en sona childrenleri yerleştirir geri kalanları eşit boşlukla dağıtır.
//.spaceAround başlangıç ve son eşit ortaya iki kat pixel boşluk atar.

crossAxisAligment:CrossAxisAligment.stretch, // Tam tersi işlem uyguluyor main'den 


),

//İsteğe bağlı alan oluşturmak için 
//Expanded widget sınıfını kullanıyoruz.

child : Row(
mainAxisSize: MainAxisSize.min,
mainAxisAligment: MainAxisAlignment.start,
children: <Widget>[
  Expanded(child: Container(
    child: Icon(),
    flex:3,
  ),),
  Expanded(child: Container(
    child: Icon(),
    flex:2,
  ),),
  Expanded(child: Container(
    child: Icon(),
    flex:4,
  ),),
]
// Üç tane iconu yatay eksende eşit şekilde sığdırıyor.
// Flex istenilen büyüklüğe göre row ya da columd'da dizayna yarar.