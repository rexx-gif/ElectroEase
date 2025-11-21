import 'package:electroease/DiscoverPage.dart';
import 'package:electroease/ProfilePage.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final String username;
  const CartPage({super.key,required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222831),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "My Cart",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Container(
                width: 500,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment
                          .centerLeft, // bisa diatur: topLeft, center, bottomRight, dll
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/iphone-14.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Iphone 16 Pro Max",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("256 GB, Black",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 15),
                          Text("\$40.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Container(
                width: 500,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment
                          .centerLeft, // bisa diatur: topLeft, center, bottomRight, dll
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/airpod.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("AirPod",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("100 hz, White",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 15),
                          Text("\$40.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Container(
                width: 500,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment
                          .centerLeft, // bisa diatur: topLeft, center, bottomRight, dll
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/iphone-17.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Iphone 17 Pro Max",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5),
                          Text("256 GB, Orange",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(height: 15),
                          Text("\$40.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Sub-Total ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Text("\$120.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount (%)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Text("\$120.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Text("\$120.00",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(onPressed: (){}, 
                  child: Text("Chekcout ->",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomAppBar(
          color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.25),
          shape:
              const CircularNotchedRectangle(), // buat notch (cekungan) untuk FAB
          notchMargin: 6.0,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => DiscoverPage(username: username)));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home, color: Colors.white),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.search, color: Colors.white),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.favorite_outline, color: Colors.white),
                  Text(
                    "Favourite",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => CartPage(username: username,))
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.shopping_cart_outlined, color: Colors.blueAccent),
                    Text(
                      "Cart",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => ProfilePage(username: username,))
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.person_2_outlined, color: Colors.white),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
