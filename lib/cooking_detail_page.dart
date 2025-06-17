import 'package:flutter/material.dart';
import 'join_page.dart';

class CookingDetailPage extends StatelessWidget {
  const CookingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('요리 상세 페이지')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 10),
            const Text(
              '함께 요리 배우기',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('요리에 관심 있는 분들을 위한 모임입니다. '
                '매주 수요일 저녁, 다양한 레시피를 함께 배우고 직접 만들어봐요!'),
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
