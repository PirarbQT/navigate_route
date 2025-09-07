import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_s.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'itemId': 'Item-456',
                    'message': 'ข้อมูลผ่าน arguments'
                  },
                );
                print('ค่าที่ได้กลับมาคือ $result');
              },
              child: const Text('Go to Detail Screen'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ThirdScreen.routeName);
              },
              child: const Text('Go to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
