import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/hicon.jpg',
          fit: BoxFit.cover,
          height: 28,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          SvgPicture.asset('assets/svg/list.svg', color: Colors.red),
          Center(child: Text("Welcome to Merchant App")),
          Image.asset('assets/images/test.png'),
          Image.asset('assets/images/hicon.jpg'),
        ],
      ),
    );
  }
}
