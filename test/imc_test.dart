import 'package:imc/models/person.dart';
import 'package:test/test.dart';

void main() {
  test('Should return the IMC value correctly', () {
    Person person = Person(name: 'Isabelle', height: 1.65, weight: 71);
    expect(person.calcIMC(), 26.08);
  });
  test('Should return IMC correctly', () {
    Person person = Person(name: 'Isabelle', height: 1.65, weight: 71);
    expect(person.imcValue, 'Levemente acima do peso');
  });
}
