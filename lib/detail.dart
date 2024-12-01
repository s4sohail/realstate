import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                "Detail",
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
          Container(
            child: Image.asset("assets/images/Group2.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "CRAFTSMAN HOUSE",
                    style: TextStyle(
                      color: Color(0xFF162A4B),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(16, 0),
                    child: Text(
                      "520 N Beaudry Ave, Los Angeles",
                      style: TextStyle(
                        letterSpacing: 0,
                        color: Color(0xFF162A4B),
                      ),
                    ),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/images/Back.png"))
            ],
          ),
          Transform.translate(
              offset: const Offset(-18, 0),
              child: Container(child: Image.asset("assets/images/frame1.png"))),
          ListTile(
            leading: Transform.translate(
              offset: const Offset(-8, 0),
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/group21.png"),
                ),
              ),
            ),
            title: Text(
              "Rebecca Tetha",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFF162A4B),
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              "Owner Craftsman House",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFF6A7A8C),
                fontWeight: FontWeight.w400,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
            ),
            trailing: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF162A4B),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Call",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset:const Offset(15, 0),
            child: Text(
                "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More",
               style: 
               TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 0.5,
                color: Color(0xFF162A4B),
               ), ),
          ),
          SizedBox(
            height: 15,
          ),
          Transform.translate(
            offset: Offset(15, 0),
            child: Text("Gallery",
            style: 
            TextStyle(
              color: Color(0xFF162A4B),
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
                    SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
                ),
                  clipBehavior: Clip.hardEdge, 
                child: Image.asset("assets/images/unsplash.png")
                ),
              Image.asset("assets/images/group7.png"),
              Image.asset("assets/images/group8.png"),
              Image.asset("assets/images/group10.png"),
            ],
          ),
                    SizedBox(
            height: 15,
          ),
           Transform.translate(
            offset: Offset(15, 0),
            child: Text("Price",
            style: 
            TextStyle(
              color: Color(0xFF162A4B),
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Transform.translate(
              offset:const Offset(15, 0),
              child: Text("\$5990000" ,style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF162A4B),
                ),
                ),
            ),

           Transform.translate(
            offset: Offset(-15, 0),
             child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xFF162A4B)),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                )),
                            onPressed: () {},
                            child: Text(
                              "BUY NOW",
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                                ),
                            )
                            ),
           ),
          ],
          )
        ],
      ),
    );
  }
}
