import 'package:flutter/material.dart';
import '../models/application.dart' hide applications;
import 'review_page.dart';
import 'review_list_page.dart'; // 후기 보기 페이지 import
import '../main.dart'; // 여기서 선언된 applications 사용

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('마이페이지')),
      body: Column(
        children: [
          Expanded(
            child: applications.isEmpty
                ? const Center(child: Text('신청 내역이 없습니다.'))
                : ListView(
              children: applications.map((app) {
                return ListTile(
                  title: Text(app.name),
                  subtitle: Text(app.phone),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              ReviewPage(hobbyTitle: app.name),
                        ),
                      );
                    },
                    child: const Text('후기 작성'),
                  ),
                );
              }).toList(),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ReviewListPage(),
                  ),
                );
              },
              child: const Text('후기 보기'),
            ),
          ),
        ],
      ),
    );
  }
}
