test_switch(int n) {
  switch (n) {
    case 1:
      print(1);
      break;
    case 2:
      print(2);
      continue two;
    case 3:
    case 4:
      print('3 4');
      break;
    two:
    case 5:
      print(5);
      break;
    default:
      print(0);
  }

}

main() {
  for (int i = 0; i <= 6; i++) {
    test_switch(i);
  }
}

// https://www.dartlang.org/guides/language/language-tour#switch-and-case
