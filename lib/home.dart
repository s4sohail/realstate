import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Los Angeles, CA",
                  style: TextStyle(
                      color: Color(0xFF162A4B),
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: Image.asset(
                        "assets/images/Back.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: Text(
                    "Discover Best\n"
                    "Suitable Property",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF162A4B),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xFF162A4B)),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              )),
                          onPressed: () {},
                          child: Text(
                            "House",
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 15
                              ),
                          )
                          ),
                     const SizedBox(width: 10),
                   ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xFFEAF1FF)),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              )),
                          onPressed: () {},
                          child: Text(
                            "Apartment",
                            style: TextStyle
                            (
                              color: Color(0xFF162A4B),
                              fontSize: 15
                              ),
                          )
                          ),
                     const SizedBox(width: 10),
                  
                           ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Color(0xFFEAF1FF)),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                              )),
                          onPressed: () {},
                          child: Text(
                            "Flot",
                            style: TextStyle
                            (
                              color:Color(0xFF162A4B),
                              fontSize: 15
                              ),
                          )
                          ),
                  
                    ],
                  ),
                ),
                SizedBox(height: 22,),
                Text(
                  "Best for you",
                  style: TextStyle(
                      color: Color(0xFF162A4B), fontSize: 20, letterSpacing: 0),
                ),
                Container(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                  
                      children: [
                  
                        Image.asset("assets/images/Group1.png",height: 200,),
                        SizedBox(width: 20,),
                        Image.asset("assets/images/Group2.png",height: 200,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text("Nearby your location",
                style: TextStyle(
                  color: Color(0xFF162A4B),
                  fontSize: 20,
                ),
                ),
                Image.asset("assets/images/Group5.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
