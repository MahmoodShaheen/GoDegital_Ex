import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // recive push Named value

  // final String name;
  // final String gender;
  // final List<String> education;

  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)?.settings.arguments as List;
    String name = data[0];
    String gender = data[1];
    List<String> education = data[2];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('صفحة البروفايل'),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 280, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('الاسم: $name'),
              Text('الجنس: $gender'),
              Text('الشهادة: ${education.join(', ')}'),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, "hello world");
                  },
                  child: const Text('رجوع'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
