//İsimsiz fonksiyonlar.

main(List<String> args) {
  var f = (int no) {
    return no * 3;
  };

  print(f(5));

  var f3 = (int s1, int s2) => print(s1 + s2);
  f3(4, 5);
}
