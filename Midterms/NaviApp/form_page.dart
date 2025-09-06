import 'package:flutter/material.dart';
import 'package:naviapp/screens/summary_page.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  DateTime? birthday;
  final TextEditingController _bdayController = TextEditingController();

  @override
  void dispose() {
    _bdayController.dispose();
    super.dispose();
  }

  // Function to pick date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime initialDate = birthday ?? DateTime(now.year - 20);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: now,
    );
    if (picked != null) {
      setState(() {
        birthday = picked;
        _bdayController.text = "${picked.toLocal()}".split(' ')[0]; // yyyy-mm-dd
      });
    }
  }

  int computeAge(DateTime birthDate) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Form')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your name' : null,
                onSaved: (value) => name = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your email' : null,
                onSaved: (value) => email = value!,
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                controller: _bdayController,
                decoration: InputDecoration(
                  labelText: 'Birthday',
                  hintText: 'YYYY-MM-DD',
                ),
                readOnly: true,
                onTap: () => _selectDate(context),
                validator: (value) =>
                    (birthday == null) ? 'Please select your birthday' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    int age = birthday != null ? computeAge(birthday!) : 0;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SummaryPage(
                                name: name,
                                email: email,
                                age: age,
                              )),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
