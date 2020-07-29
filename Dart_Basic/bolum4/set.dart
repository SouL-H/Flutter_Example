main(List<String> args) {
  //Aynı değeri bir kez saklar uniqleri saklar.
  Set<String> isimler = Set();
  isimler.add("mehmet");
  isimler.add("ahmet");
  isimler.add("mehmet");
  print(isimler);
  //Set yapısında sıralı saklanmaz.Bu yüzden indexten ulaşmak zor olur.
  Set<int> numara = Set.from([1, 2, 3, 4, 2, 14, 5, 2, 3, 4, 5, 2, 3, 1]);
  for (var s1 in numara) {
    print("no : $s1");
  }
}
