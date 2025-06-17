import 'package:flutter/material.dart';
import '../models/application.dart' hide applications;
import '../main.dart'; // applications 리스트 접근

class ApplicationsListPage extends StatefulWidget {
  final List<Application> applications;

  const ApplicationsListPage({super.key, required this.applications});

  @override
  State<ApplicationsListPage> createState() => _ApplicationsListPageState();
}

class _ApplicationsListPageState extends State<ApplicationsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('신청 내역')),
      body: widget.applications.isEmpty
          ? const Center(child: Text('신청 내역이 없습니다.'))
          : ListView.builder(
        itemCount: widget.applications.length,
        itemBuilder: (context, index) {
          final app = widget.applications[index];
          return ListTile(
            title: Text(app.name),
            subtitle: Text(app.phone),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      applications.remove(app); // 삭제 처리
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('삭제'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
