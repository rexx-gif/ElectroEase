import 'package:electroease/CartPage.dart';
import 'package:electroease/DiscoverPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222831),
      appBar: AppBar(
        title: const Text("My Profile",
            style: TextStyle(color: Colors.white, fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
                child: Container(
              width: 450,
              height: 700,
              decoration: BoxDecoration(
                color: const Color(0xff393E46),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )
              ),
            )),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "assets/images/pp.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(username.isEmpty ? "Guest User" : username[0].toUpperCase() + username.substring(1),
                  style: const TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold)),
              const Text("Premium Customer",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Wallet",style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Statistics Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.bar_chart, color: Colors.black, size: 30),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("History Purchase",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.history, color: Colors.black, size: 30),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Edit Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.edit, color: Colors.black, size: 30),
                  ],
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
                    Icon(Icons.shopping_cart_outlined, color: Colors.white),
                    Text(
                      "Cart",
                      style: TextStyle(color: Colors.white, fontSize: 12),
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
                    Icon(Icons.person_2_outlined, color: Colors.blueAccent),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 12),
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
