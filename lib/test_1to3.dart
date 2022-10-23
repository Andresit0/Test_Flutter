class UnitTestIndivFrom1To3 {
  int value = 0;
  void increment() => value++;
  void decrement() => value--;

  Future<String> getFutureString() async {
    try {
      return 'stringResult';
    } catch (e) {
      throw Exception();
    }
  }
}
