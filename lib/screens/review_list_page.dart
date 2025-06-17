import 'package:flutter/material.dart';
import '../models/review.dart';

class ReviewListPage extends StatefulWidget {
  const ReviewListPage({super.key});

  @override
  State<ReviewListPage> createState() => _ReviewListPageState();
}

class _ReviewListPageState extends State<ReviewListPage> {
  void _editReview(int index) async {
    final edited = await showDialog<String>(
      context: context,
      builder: (context) {
        String updated = reviews[index].content;
        return AlertDialog(
          title: const Text('후기 수정'),
          content: TextFormField(
            initialValue: updated,
            maxLines: 5,
            onChanged: (value) => updated = value,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('취소'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, updated),
              child: const Text('저장'),
            ),
          ],
        );
      },
    );

    if (edited != null && edited.trim().isNotEmpty) {
      setState(() {
        reviews[index] = Review(
          hobbyTitle: reviews[index].hobbyTitle,
          content: edited,
        );
      });
    }
  }

  void _deleteReview(int index) {
    setState(() {
      reviews.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('후기 리스트')),
      body: reviews.isEmpty
          ? const Center(child: Text('등록된 후기가 없습니다.'))
          : ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ListTile(
            title: Text(review.hobbyTitle),
            subtitle: Text(review.content),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => _editReview(index),
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _deleteReview(index),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
