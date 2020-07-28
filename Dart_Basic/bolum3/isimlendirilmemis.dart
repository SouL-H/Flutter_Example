main(List<String> args) {
  ulke("selam","baby");
  ulke("selam","baby","hey");
  isaretli("ali",ad3: "heh0",ad4: "vöh");
  print(hacim(5,7,9));
}

void ulke(String ad , String ad1 , [String ad2]){
  print("Ad: $ad");
  print("Ad1: $ad1");
  if(ad2 !=null){ //girilirse yazdır.
    print("Ad2: $ad2");
  }
}
void isaretli(String ad , {String ad3, String ad4}){
  //girilirse yazdır.
    print("isaretli1: $ad");
   if(ad3 !=null){ //girilirse yazdır.
    print("isaretli2: $ad3");
  }
   if(ad4 !=null){ //girilirse yazdır.
    print("isaretli3: $ad4");
  }
}

int hacim(int en , [int boy=1 , int yukseklik=1]) => en* boy*yukseklik; //Deger girilmezse varsayılan 1 al.