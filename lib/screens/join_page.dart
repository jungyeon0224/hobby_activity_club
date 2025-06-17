import 'package:flutter/material.dart';
import '../models/application.dart' hide applications;
import '../main.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('참여 신청')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: '이름'),
                validator: (value) =>
                value!.isEmpty ? '이름을 입력하세요' : null,
                onSaved: (value) => name = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '전화번호'),
                validator: (value) =>
                value!.isEmpty ? '전화번호를 입력하세요' : null,
                onSaved: (value) => phone = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    applications.add(Application(name: name, phone: phone, hobby: ''));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('신청이 완료되었습니다!')),
                    );

                    Navigator.pop(context);
                  }
                },
                child: const Text('신청하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
