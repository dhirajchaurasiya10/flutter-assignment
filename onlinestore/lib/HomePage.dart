import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'ItemCard.dart';
import 'ProductDetail.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class ButtomNavgt extends StatefulWidget {
  const ButtomNavgt({super.key});

  @override
  State<ButtomNavgt> createState() => _ButtomNavgtState();
}

class _ButtomNavgtState extends State<ButtomNavgt> {
  int selIndex = 0;
  PageController pageController = PageController();

  void onTaps(int index) {
    setState(() {
      selIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "ONLINE STORE",
            style: TextStyle(
                color: Color(0xFFFD725A), fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
                decoration: InputDecoration(
                    label: Text(" Find your product"),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imageSliders,
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Black T-shirt",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image.asset(
                    //   "images/routine.png",
                    //   fit: BoxFit.cover,
                    //   height: 100,
                    // ),

                    //not working portion
                    // Container(
                    //   child: GridView.builder(
                    //       gridDelegate:
                    //           SliverGridDelegateWithMaxCrossAxisExtent(
                    //               maxCrossAxisExtent: 250,
                    //               childAspectRatio: 2,
                    //               crossAxisSpacing: 10),
                    //       itemBuilder: (context, index) => productcard()),
                    // )
                    productcard(),
                    SizedBox(width: 20),
                    productcard(),
                    SizedBox(width: 20),
                    productcard()
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Ladies Bag",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image.asset(
                    //   "images/routine.png",
                    //   fit: BoxFit.cover,
                    //   height: 100,
                    // ),
                    // Container(
                    //   child: GridView.builder(
                    //       gridDelegate:
                    //           SliverGridDelegateWithMaxCrossAxisExtent(
                    //               maxCrossAxisExtent: 250,
                    //               childAspectRatio: 2,
                    //               crossAxisSpacing: 10),
                    //       itemBuilder: (context, index) => productcard()),
                    // )
                    productcard2(),
                    SizedBox(width: 20),
                    productcard2(),
                    SizedBox(width: 20),
                    productcard2()
                  ],
                ),
              ),
            ),
            // Expanded(
            //     child: GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     childAspectRatio: 0.5,
            //   ),
            //   itemBuilder: (context, index) => ItemCard(),
            // )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        currentIndex: selIndex,
        selectedItemColor: Color(0xFFFD725A),
        unselectedItemColor: Colors.grey,
        onTap: onTaps,
      ),
    );
  }
}

class productcard extends StatelessWidget {
  const productcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 180,
      width: 160,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 81, 129, 168),
          borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetail()));
        },
        child: Image.asset(
          "images/Black T-Shirt.png",
        ),
      ),
    );
  }
}

class productcard2 extends StatelessWidget {
  const productcard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 180,
      width: 160,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 81, 129, 168),
          borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetail()));
        },
        child: Image.asset(
          "images/Ladies Bag.png",
        ),
      ),
    );
  }
}
