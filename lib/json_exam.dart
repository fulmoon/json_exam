import 'dart:convert';

import 'package:flutter/material.dart';

class JsonExam extends StatefulWidget {
  const JsonExam({Key? key}) : super(key: key);

  @override
  State<JsonExam> createState() => _JsonExamState();
}

class _JsonExamState extends State<JsonExam> {
  Map<String, dynamic>? person;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  Future initData() async {
    person = await getData();

    setState(() {}); //그냥 화면 갱신
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: person == null
            ? const CircularProgressIndicator()
            : Text(
                '이름은 ${person!['name']}, 이메일은 ${person!['email']}',
                style: const TextStyle(fontSize: 20),
              ),
      ),
    );
  }

  Future<Map<String, dynamic>> getData() async {
    await Future.delayed(const Duration(seconds: 2));

    String jsonString = ;
    Map<String, dynamic> jsonMap = jsonDecode(jsonString);
    return jsonMap;
  }
}
