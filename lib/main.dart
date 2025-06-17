import 'package:flutter/material.dart';
import 'screens/hiking_detail_page.dart';
import 'screens/cooking_detail_page.dart';
import 'screens/reading_detail_page.dart';
import 'screens/drawing_detail_page.dart';
import 'screens/join_page.dart';
import 'screens/applications_list.dart';
import 'models/application.dart';
import 'models/hobby.dart';
import 'screens/my_page.dart';
import 'screens/review_list_page.dart';



List<Application> applications = [
  Application(name: '홍길동', phone: '010-1234-5678', hobby: '등산'),
  Application(name: '이순신', phone: '010-5678-1234', hobby: '요리'),
  Application(name: '김유신', phone: '010-9999-8888', hobby: '등산'),
];


List<Hobby> hobbies = [];  // ← 이걸 import들 아래로 옮겨야 해




void main() {
  runApp(const HobbyActivityClubApp());
}

class HobbyActivityClubApp extends StatelessWidget {
  const HobbyActivityClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hobby Activity Club',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HobbyListScreen(),
        '/join': (context) => const JoinPage(),
        '/applications': (context) => ApplicationsListPage(applications: applications),
        '/mypage': (context) => const MyPage(),
        '/reviewlist': (context) => const ReviewListPage(),
      },
    );
  }
}

class HobbyListScreen extends StatelessWidget {
  const HobbyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('취미 리스트'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.pushNamed(context, '/applications');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildHobbyCard(
            context,
            title: '등산',
            subtitle: '주말 산행 모임\n참여 인원: ${getParticipantCount('등산')}명',
            icon: Icons.directions_walk,
            page: const HikingDetailPage(),
          ),

          _buildHobbyCard(
            context,
            title: '요리',
            subtitle: '함께 요리 배우기\n참여 인원: ${getParticipantCount('요리')}명',
            icon: Icons.restaurant,
            page: const CookingDetailPage(),
          ),

          _buildHobbyCard(
            context,
            title: '독서',
            subtitle: '월간 독서 토론\n참여 인원: ${getParticipantCount('독서')}명',
            icon: Icons.book,
            page: const ReadingDetailPage(),
          ),

          _buildHobbyCard(
            context,
            title: '그림 그리기',
            subtitle: '취미 미술 클래스\n참여 인원: ${getParticipantCount('그림 그리기')}명',
            icon: Icons.brush,
            page: const DrawingDetailPage(),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mypage');
            },
            child: const Text('마이페이지'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/reviewlist');
            },
            child: const Text('후기 리스트 보기'),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/join');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildHobbyCard(BuildContext context,
      {required String title,
        required String subtitle,
        required IconData icon,
        required Widget page}) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
int getParticipantCount(String hobbyTitle) {
  return applications.where((app) => app.hobby == hobbyTitle).length;
}
