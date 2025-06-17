import 'package:flutter/material.dart';
import 'join_page.dart';

class DrawingDetailPage extends StatelessWidget {
  const DrawingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('그림 그리기 상세 페이지')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1504196606672-aef5c9cefc92',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              '취미 미술 클래스',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('그림 그리기를 좋아하거나 배우고 싶은 분들을 위한 클래스입니다. '
                '함께 즐겁게 그리며 창의력을 키워보세요!'),
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
