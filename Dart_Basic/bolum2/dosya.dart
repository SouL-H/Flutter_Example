main(List<String> args) {
 //Ternary mantığı

 int sayi=4;
 var sayi2=5;
 int kucuk;

 kucuk = sayi < sayi2 ? sayi : sayi2;
 print("Kucuk= $kucuk");
 
 String ad = "ahmet";
 String soyad ;
  String mesaj;
 mesaj = ad ?? soyad; // hangisi boş yani null ise dolu olanı alır ?? o işe yarar.

 print("Merhaba $mesaj");

 dis: for(int i =1 ; i<=3; i++){
   for(int j=1;j<=3;j++){
     print("$i * $j = ${i*j}");
     if(i==2){
       break dis; // dis dongu kırıldı  continue'de de aynı durum geçerlidir.
     }
   }
 }
}
