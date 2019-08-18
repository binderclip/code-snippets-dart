int timestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

main() {
  print(new DateTime.now().millisecondsSinceEpoch);
  print(timestamp());
}
