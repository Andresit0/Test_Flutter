import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test_example/test_1to3.dart';

class MockUnitTestIndivFrom1To3 extends Mock implements UnitTestIndivFrom1To3 {
  @override
  Future<String> getFutureString() =>
      (super.noSuchMethod(Invocation.method(#getAlbum, []),
          returnValue: Future<String>.value('')) as Future<String>);
}

//@GenerateMocks([MockCounter]) //To obtain: " @override Future<String> ..."
void main() {
  late MockUnitTestIndivFrom1To3 mockCounter;

  setUp(() {
    mockCounter = MockUnitTestIndivFrom1To3();
  });

  group('getAlbum()', () {
    test('Calling Album 1 Time', () async {
      when(mockCounter.getFutureString())
          .thenAnswer((_) => Future.value('Album 1'));
      await mockCounter.getFutureString();
      verify(mockCounter.getFutureString()).called(1);
    });

    test('Ontaining "Album 1" Result', () async {
      when(mockCounter.getFutureString())
          .thenAnswer((_) async => Future.value('Album 1'));
      expect(mockCounter, isA<UnitTestIndivFrom1To3>());
      expect(await mockCounter.getFutureString(), isA<String>());
      String result = await mockCounter.getFutureString();
      expect(result, 'Album 1');
    });

    test('Throws an Exception', () {
      when(mockCounter.getFutureString())
          .thenAnswer((_) async => throw Exception());
      expect(mockCounter.getFutureString(), throwsException);
    });
  });
}
