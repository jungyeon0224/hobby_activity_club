import 'package:flutter/material.dart';
import 'join_page.dart';  // 신청 페이지 import

class HikingDetailPage extends StatelessWidget {
  const HikingDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('등산 상세 페이지'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1508780709619-79562169bc64',  // 새 이미지 링크 (등산 관련)
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '주말 산행 모임',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '자연을 사랑하는 분들을 위한 등산 모임입니다. '
                    '주말마다 새로운 산을 함께 오르며 건강과 즐거움을 챙겨보세요!',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JoinPage(),
                    ),
                  );
                },
                child: const Text('참여하기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
