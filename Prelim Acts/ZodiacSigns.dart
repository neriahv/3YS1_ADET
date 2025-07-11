import 'dart:io';

List<String> zodiacSigns = ['Monkey', 'Rooster', 'Dog', 'Pig', 'Rat', 'Ox',
  'Tiger', 'Rabbit', 'Dragon', 'Snake', 'Horse', 'Goat'];

String getZodiacSign(int year) {
    String zodiac = zodiacSigns[year % 12];
    return zodiac;
}

void main(){
    print("\nLet's find out your Chinese Zodiac sign and horoscope!");
    stdout.write('\nEnter your Birth Day (1 - 31): ');
    int? day = int.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Enter your Birth Month (1 - 12): ');
    int? month = int.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Enter your Birth Year: ');
    int? year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    String sign = getZodiacSign(year);

}

