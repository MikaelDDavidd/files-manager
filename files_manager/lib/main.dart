import 'package:files_manager/widget/audio_widget.dart';
import 'package:files_manager/widget/pdf_widget.dart';
import 'package:files_manager/widget/video_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FIles Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 2;

  @override
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(child: buildPages()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
              icon: Text(''),
              label: ('Video'),
            ),
            BottomNavigationBarItem(
              icon: Text(''),
              label: ('Audio'),
            ),
            BottomNavigationBarItem(
              icon: Text(''),
              label: ('Pdf'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return const VideoWidget();
      case 1:
        return AudioWidget();
      case 2:
        return const PdfWidget();
      default:
        return Container();
    }
  }
}
