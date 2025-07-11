class HuaweiPhone {
  // Encapsulation
  String _model = '';
  int _battery = 0;

  String get model => _model;
  set model(String value) => _model = value;

  int get battery => _battery;
  set battery(int value) {
    _battery = value;
    // The get method returns the variable value, and the set method sets the value.
    if (value == 0 || value < 0) {
      print('Battery is emotionally damaged!');
    } else {
      print('Battery is in good condition');
    }
  }

  void displayMobileInfo() {
    print("Phone: $_model, Battery: $_battery mah");
  }
}
