import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:try_commented_sold/expandableList/dataList.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/theme/color.dart';
import 'package:try_commented_sold/theme/text.dart';

import 'drawer_pages/Feature_item/LiveSelling.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  

  int activeState = 0;
  final imageListt = [
    "photo/s1.PNG",
    "photo/s2.PNG",
    "photo/s3.PNG",
    "photo/s4.PNG",
    "photo/s5.PNG",
    "photo/s6.PNG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: CScolor.titlebackgroundColor),
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 35,
                  width: 120,
                  color: CScolor.titlebackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text('Comment'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sold',
                  style: TextStyle(
                      color: CScolor.headerBackgroundcolor,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        primary: true,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(14.0),
        //     child: IconButton(
        //         icon: Icon(Icons.menu),
        //         onPressed: () {
        //           if (_scaffoldKey.currentState!.isDrawerOpen == true) {
        //             _scaffoldKey.currentState!.openDrawer();
        //           } else {
        //             _scaffoldKey.currentState!.openEndDrawer();
        //           }
        //         }),
        //   )
        // ],
        leading: IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {
              if (_scaffoldKey.currentState!.isDrawerOpen == false) {
                _scaffoldKey.currentState!.openDrawer();
              } else {
                _scaffoldKey.currentState!.openEndDrawer();
              }
            }),
        automaticallyImplyLeading: false,
      ),

      key: _scaffoldKey,
      
      body: ListView(
        children: [
          Expanded(
            child: Container(
              color: CScolor.headerBackgroundcolor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: textField('Save time with fully', 23,
                        FontWeight.bold, Colors.white),
                  ),
                  textField('automated Comment Selling', 23, FontWeight.bold,
                      Colors.white),
                  _main_buton('Get a Demo', 15, () {}, FontWeight.bold),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: Colors.amber.withOpacity(0.5),
                        height: 300,
                        child: Center(
                            child: Text('Video ',
                                style: TextStyle(color: Colors.white)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: textField(
                        'Facebook Marketplace isn’t the only way to sell on Facebook – CommentSold allows your fans to purchase directly from your Page, Group, and Instagram.',
                        15,
                        FontWeight.normal,
                        Colors.white),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Image.asset('photo/g1.jpg'),
                ),
              ),
              textField('Say “good-bye” to manual invoicing', 15,
                  FontWeight.bold, Colors.black),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: textField(
                    'Automatically cart items and send invoices to your customers after their comment purchase.',
                    15,
                    FontWeight.normal,
                    Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Image.asset('photo/g1.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textField('Engage customers without lifting a finger',
                    15, FontWeight.bold, Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: textField(
                    '24/7 conversational auto replies and auto invoicing keep the hustle going at all times.',
                    15,
                    FontWeight.normal,
                    Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Image.asset('photo/g1.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textField('Boost sales & reduce cart abandonment', 15,
                    FontWeight.bold, Colors.black),
              ),
              textField(
                  'Cart expirations plus dynamic waitlists mean you’ll never miss a potential sale again.',
                  15,
                  FontWeight.normal,
                  Colors.black),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textField(
                    'Get strategies on how to make more money with comment selling directly in your inbox:',
                    20,
                    FontWeight.normal,
                    Colors.black),
              ),
              // search bar
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(15), //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      border: InputBorder.none,
                      fillColor: Color(0xffF5F8FA),
                    ),
                  ),
                ),
              ),
            
              _main_buton('Subscribe', 15, () {}, FontWeight.bold),
              textField('A faster, easier way to sell on social media', 20,
                  FontWeight.bold, Colors.black),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: textField('CommentSold automates your social commerce',
                    15, FontWeight.normal, Colors.black),
              ),
            ],
          )),
          // expandable list
          SizedBox(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ExpandableList(),
          )),

          Padding(
            padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: textField(
                        'Key Feature', 20, FontWeight.w800, Colors.black)),
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    'Automated Invicing', 20, FontWeight.bold, Colors.black),
                SizedBox(height: 10),
                textField(
                    'Instanty and automatically send an invoice through email, Commment reply, and/or Messenger when a shopper makess a comment purchase.',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField('Conversational Replies', 20, FontWeight.bold,
                    Colors.black),
                SizedBox(height: 10),
                textField(
                    'Automatically Reply with preset comments on threads, Messenger. or email to guide new shoppers to registration, conform items carted, and more.',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField('Custome Cart Expirations', 20, FontWeight.bold,
                    Colors.black),
                SizedBox(height: 10),
                textField(
                    'Set how long a shopper has to check out before their cart gets dumped.Invoices show the clock ticking down and reminders are sent via auto-replies.',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField('Waitlists & Authorizations', 20, FontWeight.bold,
                    Colors.black),
                SizedBox(height: 10),
                textField(
                    'Shoppers can waitlist out of stock items. When available, it’s carted and the shopper is notified. If pre-authorized, they automatically check out!',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  CupertinoIcons.hand_thumbsup_fill,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField('Dynamic Live Selections', 20, FontWeight.bold,
                    Colors.black),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: textField(
                      'Use barcodes or add by search to create your Live Sale product selection on the fly.If barcoding, we’ll auto-assign identifiers to each product.',
                      15,
                      FontWeight.normal,
                      Colors.black),
                ),
                SizedBox(height: 40),
                Icon(
                  CupertinoIcons.arrowshape_turn_up_left_2_fill,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField('Post Message Templates', 20, FontWeight.bold,
                    Colors.black),
                SizedBox(height: 10),
                textField(
                    'Our system automatically generates post messages for you including all the product details based on an editable template.',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  CupertinoIcons.link,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    'Auto Link to Post', 20, FontWeight.bold, Colors.black),
                SizedBox(height: 10),
                textField(
                    'You can make or schedule your posts directly through Facebook or Instagram and automatically link to the product in CommentSold™!',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 40),
                Icon(
                  CupertinoIcons.arrowshape_turn_up_left_2_fill,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    'Auto Page Responses', 20, FontWeight.bold, Colors.black),
                textField(
                    'When customers send messages to your Facebook page,they will get an automated response to contact you via email for support',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 10),
                SizedBox(height: 40),
                Icon(
                  Icons.place,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    'Multi Location Posts', 20, FontWeight.bold, Colors.black),
                SizedBox(height: 10),
                textField(
                    'Go Live or make a static post directly to your Facebook Page and Groups simultaneously to maximize your reach and sales.',
                    15,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(height: 80),
              ],
            ),
          ),
          Container(
            height: 900,
            width: double.infinity,
            color: Colors.orange,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 60),
                    child: Text(
                      "Free Download: Complete Guid to Live Sales",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 20, left: 20),
                  child: Text(
                    "Dominate the competition with a "
                    "solid strategy for utilizing the most powerful Facebook selling tool.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                // form container
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                      // height: 700,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "First name",
                                  ),
                                ),
                              ),
                              textfield(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Last name",
                                  ),
                                ),
                              ),
                              textfield(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Email",
                                  ),
                                ),
                              ),
                              textfield(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Company name",
                                  ),
                                ),
                              ),
                              textfield(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Phone number",
                                  ),
                                ),
                              ),
                              textfield(),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Select Your Estimated Total Monthly Sales",
                                  ),
                                ),
                              ),
                              textfield(),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 40,
                                  color: Colors.amber,
                                  child: Center(
                                    child: Text(
                                      "Download Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // carouselSlider
          CarouselSlider.builder(
            itemCount: imageListt.length,
            itemBuilder: (context, index, realIndex) {
              final imageList = imageListt[index];
              return buildImageUrl(imageList, index);
            },
            options: CarouselOptions(
                height: 150,
                //to show one image on the screen
                viewportFraction: 1,
                autoPlay: true,
                reverse: true,
                // for duration
                //autoPlayInterval: Duration(seconds: 2),
                // to show image large
                enlargeCenterPage: true,
                // page slide
                //pageSnapping: false,
                // when  image  is over
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeState = index;
                  });
                }),
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            child: Image.asset("photo/try1.PNG"),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 38, left: 38, right: 38),
            child: Text(
              "Social selling is the future of retail",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'If you aren’t giving your customers a fun, engaging experience while shopping, you are in jeopardy of losing their business forever. That’s why more than 15,000 retailers are already increasing sales and finding new customers by capturing sales directly on their social media posts and videos.',
                15,
                FontWeight.normal,
                Colors.black),
          ),

          SizedBox(
            height: 40,
          ),

          /// schedule call buton container
          Expanded(
            child: Container(
              color: Color(0xFF006CED),
              // height: 230,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: textField(
                        'CommentSold is the #1 tool for engaging and converting shoppers in real-time with fully automated Comment Selling',
                        23,
                        FontWeight.w500,
                        Colors.white),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  _main_buton('Schedule a Call', 15, () {}, FontWeight.bold)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Features",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Comment Selling", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Live Selling", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Make Shopping a Game",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Make Shopping a Game",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Invoicing & Payments",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Inventory Management",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Shipping & Fulfillment",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Marketing Automation",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Reporting & Analytics",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 170,
                        ),
                        Text(
                          "Learn",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("Pricing", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Get a Demo", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Webinars & Events",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Case Studies", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("eBooks & Guides", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Insights Blog", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Product Training",
                            style: TextStyle(fontSize: 12)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("How-To Videos", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Community", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sell Everywhere",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // footer_textfield(),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Facebook", style: TextStyle(fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Your Website",
                                style: TextStyle(fontSize: 10)),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Your Mobile App",
                                style: TextStyle(fontSize: 10)),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        Text(
                          "Use Cases",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("Women's Retail", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Direct Selling", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Home Decor", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Sports Merchandise",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Pet Supplies & Accessories",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Jewelry", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Arts & Crafts", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Company",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Become a Partner",
                            style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Press Room", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Product Roadmap", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Careers", style: TextStyle(fontSize: 10)),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.facebook),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(CupertinoIcons.map_pin),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(CupertinoIcons.play_rectangle),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(Icons.facebook),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // SizedBox(
          //   height: 10,
          // ),
          // featured Download container
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Featured Download",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "5 Trends Retailers Must Prep for in 2021",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
              child: Image.asset("photo/b1.PNG"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Get the details on new consumer trends, creative retail "
              "strategies, and emerging technologies that will reshape retail this year.",
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "Download our free guide",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Color(0xFFF2F8FE),
            child: Column(
              children: [
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Start Free Trail",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Talk To Sale",
                        style: TextStyle(color: Colors.orange, fontSize: 15),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "privacy policy",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "2021 CommentSold. All rights reserved ",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
   
    drawer: Drawer(
          // child: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       MyDrawerList(),
          //     ],
          //   ),
          // ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // Expendable list view
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: vehicles.length,
                          itemBuilder: (context, i) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: ExpansionTile(
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          vehicles[i].title,
                                          style: const TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff022C43)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  children: <Widget>[
                                    Column(
                                      children:
                                          // _buildExpandableContent(vehicles[i]),
                                          _buildExpandableContent(vehicles[i],
                                              context, vehicles[i].title),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5,
                                  color: CScolor.titlebackgroundColor)),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text('Log In'),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }

  Padding footer_textfield(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(title,
          style: TextStyle(fontSize: 12, height: 1.2, letterSpacing: 1)),
    );
  }


  Padding _main_buton(
    String title,
    double size,
    Function function,
    FontWeight fontWeight,
  ) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: CScolor.titlebackgroundColor,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              textStyle: TextStyle(fontSize: size, fontWeight: fontWeight)),
          onPressed: () {},
          child: Text(title)),
    );
  }

  Widget textField(
    String title,
    double size,
    FontWeight bold,
    Color color,
  ) {
    return Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: bold,
            height: 1.2,
            letterSpacing: 0.7));
  }

  Expanded textfield() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 20,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageUrl(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(urlImage),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeState, count: imageListt.length);

       _buildExpandableContent(
      basicclass wgtveriable, BuildContext context, String title) {
    List<Widget> columnContent = [];
    List screen = [];

    for (int content = 0; content < wgtveriable.contents.length; content++) {
      columnContent.add(
        ListTile(
          onTap: () {
            for (int i = 0; i <= content; i++) {
              screen.add(
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => wgtveriable.screenName[i],
                  ),
                ),
              );
              print(i);
            }
          },

          title: Text(
            wgtveriable.contents[content],
            style: const TextStyle(fontSize: 18.0),
          ),
          // leading: Icon(vehicle.icon),
        ),
      );
    }

    return columnContent;
  }

  List<basicclass> vehicles = [
    basicclass('Feature', [
      'Comment Selling',
      'Live Selling ',
      'Make Shopping a Game',
      'Seamless Online Shopping',
    ], screenName: [
      HomePage(),
      LiveSelling(),
    ]
        // Icons.motorcycle,
        ),
// ];
    basicclass('Sell EveryWhere', [
      'Instagram',
      'Facebook',
      'your Website',
      'Your Mobile App',
    ], screenName: [
      HomePage(),
      LiveSelling()
    ]
        // Icons.motorcycle,
        ),
    basicclass('Use Case', [
      'Women Selling',
      'Direct Selling',
      'Sports Merchandise',
      'Home Decor',
    ],
        // Icons.motorcycle,
        screenName: [
          HomePage(),
          LiveSelling(),
        ]),

    basicclass('Learn', [
      'Pricing',
      'Get a Demo',
      'Webinars & Guides',
      'eBook & Guides',
      'Insights Blog',
    ],
        // Icons.motorcycle,
        screenName: [
          HomePage(),
          LiveSelling(),
        ]),
  ];


}

void setState(Null Function() param0) {}
