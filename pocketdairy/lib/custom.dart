
import 'dart:math';

String generatePassword({
  bool letter = true,
  bool isNumber = true,
  bool isSpecial = true,
}) {
  final length = 4;
  final letterLowerCase = "abcd";
  final letterUpperCase = "ABCD";
  final number = '0123456789';
  final special = '@#%^*>\$@?/[]=+';

  String chars = "";
  if (letter) chars += '$letterLowerCase$letterUpperCase';
  if (isNumber) chars += '$number';
  if (isSpecial) chars += '$special';


  return List.generate(length, (index) {
    final indexRandom = Random.secure().nextInt(chars.length);
    return chars [indexRandom];
  }).join('');
}