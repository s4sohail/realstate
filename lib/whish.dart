import 'package:flutter/material.dart';

class WhishScreen extends StatefulWidget {
  const WhishScreen({super.key});

  @override
  State<WhishScreen> createState() => _WhishScreenState();
}

class _WhishScreenState extends State<WhishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.white,
            appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, 5),
              child: Text(
                "Wishlist",
                style: TextStyle(
                    color: Color(0xFF162A4B),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: IconButton(
                icon: Image.asset(
                  "assets/images/back1.png",
                  height: 45,
                  width: 50,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/group1.png"),
          Image.asset("assets/images/group2.png")
        ],
      ),
    );
  }
}