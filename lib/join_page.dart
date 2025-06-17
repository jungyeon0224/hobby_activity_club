import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({super.key});

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String contact = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('참여 신청하기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: '이름'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '이름을 입력하세요';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value ?? '';
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: '연락처'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '연락처를 입력하세요';
                  }
                  return null;
                },
                onSaved: (value) {
                  contact = value ?? '';
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$name 님, 신청이 완료되었습니다!')),
                    );
                    Navigator.pop(context); // 폼 제출 후 이전 화면으로 돌아가기
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
