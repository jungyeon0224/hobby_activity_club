import 'package:flutter/material.dart';
import '../models/review.dart';

class ReviewPage extends StatefulWidget {
  final String hobbyTitle;

  const ReviewPage({super.key, required this.hobbyTitle});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final _formKey = GlobalKey<FormState>();
  String content = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.hobbyTitle} 후기 작성')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: '후기 내용'),
                maxLines: 5,
                validator: (value) => value!.isEmpty ? '내용을 입력하세요!' : null,
                onSaved: (value) => content = value!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    reviews.add(
                      Review(hobbyTitle: widget.hobbyTitle, content: content),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('후기가 저장되었습니다!')),
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text('저장하기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
