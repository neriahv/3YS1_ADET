import 'dart:io';

// List of Chinese Zodiac signs
List<String> zodiacList = [
  'Monkey', 'Rooster', 'Dog', 'Pig', 'Rat', 'Ox',
  'Tiger', 'Rabbit', 'Dragon', 'Snake', 'Horse', 'Goat'
];

// Function to get Zodiac sign based on birth year
String getZodiacSign(int year) {
  return zodiacList[year % 12];
}

// Function to get horoscope based on Zodiac sign
String getHoroscope(String sign) {
  switch (sign) {
    case 'Rat':
      return '''
Love: You are charming and romantic. It's a good time to reconnect with loved ones.
Career: Your wit helps you solve challenges at work. A promotion could be on the horizon.
Health: Stay active and avoid stress. Mental well-being is as important as physical health.''';
    case 'Ox':
      return '''
Love: Stability is your strength. Relationships grow stronger through patience.
Career: Hard work pays off. Expect recognition.
Health: Avoid overworking. Prioritize rest.''';
    case 'Tiger':
      return '''
Love: Exciting changes ahead. Be bold.
Career: Take initiative on new projects.
Health: Stay physically active to manage energy.''';
    case 'Rabbit':
      return '''
Love: Gentle and compassionate connections will flourish.
Career: Your diplomacy opens new doors.
Health: Focus on diet and relaxation.''';
    case 'Dragon':
      return '''
Love: You radiate confidence—expect admiration.
Career: Opportunities arise. Trust your instincts.
Health: Watch for burnout—balance is key.''';
    case 'Snake':
      return '''
Love: Deep emotions come to the surface.
Career: Your insights bring success.
Health: Take time to unwind and reflect.''';
    case 'Horse':
      return '''
Love: Adventure spices up your love life.
Career: Embrace teamwork.
Health: Channel your energy positively.''';
    case 'Goat':
      return '''
Love: A nurturing bond strengthens.
Career: Creativity leads to success.
Health: Maintain emotional balance.''';
    case 'Monkey':
      return '''
Love: Fun and mischief bring joy.
Career: Think outside the box.
Health: Stay mentally challenged.''';
    case 'Rooster':
      return '''
Love: Honesty builds trust.
Career: Details matter—focus sharpens results.
Health: Rest your body and mind.''';
    case 'Dog':
      return '''
Love: Loyalty is rewarded.
Career: Stay dependable and success will follow.
Health: Prioritize mental wellness.''';
    case 'Pig':
      return '''
Love: Generosity deepens your bond.
Career: Collaboration brings rewards.
Health: Keep a steady routine.''';
    default:
      return 'No horoscope available.';
  }
}

// Function to validate day and month input
bool isValidDate(int day, int month) {
  if (month < 1 || month > 12) return false;

  List<int> daysInMonth = [
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
  ];

  return day >= 1 && day <= daysInMonth[month - 1];
}

void main() {
  String? again;

  do {
    stdout.write("Enter your Name: ");
    String? name = stdin.readLineSync();

    int day = 0;
    int month = 0;
    int year = 0;

    // Validate birth day
    while (true) {
      stdout.write("Enter your birth day (1–31): ");
      day = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (day >= 1 && day <= 31) break;
      print("Invalid day. Please enter a value between 1 and 31.");
    }

    // Validate birth month
    while (true) {
      stdout.write("Enter your birth month (1–12): ");
      month = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (month >= 1 && month <= 12) break;
      print("Invalid month. Please enter a value between 1 and 12.");
    }

    // Validate birth year
    while (true) {
      stdout.write("Enter your birth year (e.g., 1995): ");
      year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (year > 0) break;
      print("Invalid year. Please enter a valid year.");
    }

    // Validate full date
    if (!isValidDate(day, month)) {
      print("The date entered is invalid. Please try again.");
      continue;
    }

    String zodiac = getZodiacSign(year);
    String horoscope = getHoroscope(zodiac);

    print("\n$name, your Chinese Zodiac Sign is: $zodiac");
    print(horoscope);

    stdout.write("\nDo you want to try again? (yes/no): ");
    again = stdin.readLineSync()?.toLowerCase();
    print("");
  } while (again == 'yes');
}
