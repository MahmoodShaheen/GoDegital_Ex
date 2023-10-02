import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nav_app/navigation/route_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String name = '';
  String gender = 'ذكر';
  List<String> education = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة التسجيل'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'الاسم'),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            ListTile(
              title: const Text('الجنس'),
              contentPadding: const EdgeInsets.all(0),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Radio(
                    value: 'ذكر',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  const Text('ذكر'),
                  Radio(
                    value: 'أنثى',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                  const Text('أنثى'),
                ],
              ),
            ),
            const Text("الشهادات"),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Checkbox(
                    value: education.contains('بكالوريا'),
                    onChanged: (value) {
                      setState(() {
                        if (value!) {
                          education.add('بكالوريا');
                        } else {
                          education.remove('بكالوريا');
                        }
                      });
                    },
                  ),
                  const Text('بكالوريا'),
                  Checkbox(
                    value: education.contains('دبلوم'),
                    onChanged: (value) {
                      setState(() {
                        if (value!) {
                          education.add('دبلوم');
                        } else {
                          education.remove('دبلوم');
                        }
                      });
                    },
                  ),
                  const Text('دبلوم'),
                  Checkbox(
                    value: education.contains('ماجستير'),
                    onChanged: (value) {
                      setState(() {
                        if (value!) {
                          education.add('ماجستير');
                        } else {
                          education.remove('ماجستير');
                        }
                      });
                    },
                  ),
                  const Text('ماجستير'),
                  Checkbox(
                    value: education.contains('دكتوراة'),
                    onChanged: (value) {
                      setState(() {
                        if (value!) {
                          education.add('دكتوراة');
                        } else {
                          education.remove('دكتوراة');
                        }
                      });
                    },
                  ),
                  const Text('دكتوراة'),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  dynamic x = await Navigator.pushNamed(
                      context, RoutePage.profilePage,
                      arguments: [name, gender, education]);
                  log(x.toString());
                },
                child: const Text('سجل'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
