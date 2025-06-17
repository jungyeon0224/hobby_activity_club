import 'package:flutter/material.dart';
import 'join_page.dart';

class ReadingDetailPage extends StatelessWidget {
  const ReadingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('독서 상세 페이지')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1512820790803-83ca734da794',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              '월간 독서 토론',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('책을 사랑하는 분들을 위한 독서 모임입니다. '
                '매달 한 권의 책을 읽고 함께 토론하며 생각을 나눠요!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JoinPage()),
                );
              },
              child: const Text('참여하기'),
            ),
          ],
        ),
      ),
    );
  }
}
