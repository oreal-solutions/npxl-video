import 'package:test/test.dart';

import '../lib/demo.dart';

void main() {
  group("demo", () {
    group("add(num1, num2)", () {
      test("Should return 8 when given 3 and 5", () {
        num ret = add(3, 5);
        expect(ret, 8);
      });
    });
  });
}
