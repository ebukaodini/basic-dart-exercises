/**
 * Exercise 3
 * Take a list, say for example this one:
 * a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
 * and write a program that prints out all the elements of the list that are less than 5.
 */

main(List<String> args) {
  exercise();
  mainj();
}

void exercise() {
  /// EXERCISE 33333
  var lista = [1, 1, 2, 3, 8, 13, 21, 34, 55, 89];
  var ert = 5;

  for (var ctr in lista) {
    if (ctr < ert) {
      print(ctr);
    }
  }
}

void mainj() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var i in a) {
    if (i < 5) {
      print(i);
    }
  }
  // One liner
  print([
    for (var i in a)
      if (i < 5) i
  ]);
}
