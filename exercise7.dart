/**
 * Exercise 7
 * Let’s say you are given a list saved in a variable:
 * a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
 * Write a Dart code that takes this list and makes a new list that has only the even 
 * elements of this list in it.
 */

main(List<String> args) {
  fresh();
  tabe();
}

void fresh() {
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  for (var ctr in a) {
    if (ctr % 2 == 0) {
      print(ctr);
    }
  }
}

void tabe() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  int i = 0;
  List<int> l = [];
  for (var e in a) {
    if (++i % 2 == 0) {
      l.add(e);
    }
  }
  print(l);
  // One liner
  print([
    for (var e in a)
      if (++i % 2 == 0) e
  ]);
}
