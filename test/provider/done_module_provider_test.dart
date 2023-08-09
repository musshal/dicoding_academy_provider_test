import 'package:dicodingacademy/provider/done_module_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Provider Test', () {
    test('should contain new item when module completed', () {
      // arrange
      var doneModuleProvider = DoneModuleProvider();
      var testModuleName = 'Test Module';

      // act
      doneModuleProvider.complete(testModuleName);

      // assert
      var result = doneModuleProvider.doneModuleList.contains(testModuleName);
      expect(result, true);
    });

    test('should delete item with status done', () {
      // arrange
      var doneModuleProvider = DoneModuleProvider();
      var testModuleName = 'Test Module';

      // act
      doneModuleProvider.complete(testModuleName);
      doneModuleProvider.remove(testModuleName);

      // assert
      var result = doneModuleProvider.doneModuleList.isEmpty;
      expect(result, true);
    });
  });
}