main(List<String> args) {
  Map<String, Object> kisiler =
      Map(); // Object her türlü değer aldığını söyler.
  kisiler["ad"] = "Ahmet";
  kisiler["Yas"] = 21;

  for (Object key in kisiler.values) {
    print("Value değeri : $key");
  }

  kisiler.update("Yas", (value) => 35); //bilgi güncelleme

  kisiler.forEach(
      (key, value) => print("key: $key value: $value")); //ikili deger gezme.
  Map<String, String> sehirKodlari = {"Ankara": "0312", "İzmir": "0232"};
  print("Ankara kodu : ${sehirKodlari["İzmir"]}");
}
