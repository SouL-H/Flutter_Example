main(List<String> args) {
  
  int a = sayilar(5,3);
  print("degeri: $a");
  print("Max sayi"+ maxsayi(5,6).toString());

}

int sayilar (int s1 , int s2) => s1-s2; //FatArrow function kısa func yani.

int maxsayi (int s3, int s4) => (s3<s4) ? s4 : s3;
