import 'package:flutter/material.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/LiveSelling.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/SeamlessOnlineShopping.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/commentSelling.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/makeShoppingGame.dart';
import 'package:try_commented_sold/drawer_pages/Learn/ebook_guid.dart';
import 'package:try_commented_sold/drawer_pages/Learn/getDemo.dart';
import 'package:try_commented_sold/drawer_pages/Learn/insightBlog.dart';
import 'package:try_commented_sold/drawer_pages/Learn/pricingPage.dart';
import 'package:try_commented_sold/drawer_pages/Learn/webinar_Guides.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/Facebook.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/Instagram.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/mobileApp.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/yourWebsite.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/DirectSelling.dart';
import 'package:try_commented_sold/expandableList/dataList.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/homePage.dart';
import 'package:try_commented_sold/theme/color.dart';

import 'SportMerchandise.dart';
import 'homeDecor.dart';

class womenSellingPage extends StatefulWidget {
  @override
  _womenSellingPageState createState() => _womenSellingPageState();
}

class _womenSellingPageState extends State<womenSellingPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
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
          textField("The only interactive, real-time eCommerce platform", 20,
              FontWeight.w600, Colors.black),
          _main_buton("Get a Demo", 15, () {}, FontWeight.w700),

          //1st Image Container
          Container(
            child: Image.asset("photo/w1.PNG"),
          ),
          SizedBox(
            height: 30,
          ),
          textField(
              "Increase sales and save time with a seamless shoppingexperience "
              "your shoppers are actually addicted to.",
              15,
              FontWeight.normal,
              Colors.black),
          SizedBox(height: 50),
          //this Container is start on More than just a website text
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: textField("More than just a website", 20,
                      FontWeight.w600, Colors.black),
                ),
                SizedBox(height: 30),
                textField(
                    "Playful experiences make shopping more memorable and enhance the customer experience. "
                    "Now you can provide easy and fun ways to shop wherever you sell online.",
                    15,
                    FontWeight.normal,
                    Colors.black),

                //expandable list
                SizedBox(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ExpandableList(),
                )),
                //after drop down lisr text
                SizedBox(height: 20),
                textField("Move inventory in fun & engaging ways", 30,
                    FontWeight.w400, Colors.black),
                SizedBox(
                  height: 70,
                ),
                //2nd Image Container
                Container(
                  child: Image.asset("photo/w2.PNG"),
                ),
                SizedBox(
                  height: 20,
                ),
                textField("Automatically repost inventory", 20, FontWeight.bold,
                    Colors.black),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: textField(
                      "Simply set rules on minimum inventory available, days between reposts, and times to post on Facebook – we handle the rest!",
                      15,
                      FontWeight.normal,
                      Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                //3rd Image Container
                Container(
                  child: Image.asset("photo/w3.PNG"),
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    "Offer mystery items", 20, FontWeight.w800, Colors.black),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: textField(
                      "Drive impulse buys with dynamic mystery items. You decide what products are eligible and we make sure your customer has never purchased it before.",
                      15,
                      FontWeight.normal,
                      Colors.black),
                ),
                // 4th one image
                Container(
                  child: Image.asset("photo/w4.PNG"),
                ),
                SizedBox(
                  height: 20,
                ),
                textField(
                    "Keep inventory moving", 20, FontWeight.bold, Colors.black),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: textField(
                      "Dynamic waitlist features paired with cart expirations ensure you never miss a sale. Dumped items move to the next "
                      "person in line & a notification is automatically sent.",
                      15,
                      FontWeight.normal,
                      Colors.black),
                ),
                textField("See how it works for your shoppers", 20,
                    FontWeight.w600, Colors.black),
                SizedBox(
                  height: 20,
                ),
                // 5th one image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset("photo/w5.PNG"),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                textField(
                    "Learn how social commerce is powering and shaping the retail business.",
                    20,
                    FontWeight.normal,
                    Colors.black),
                SizedBox(
                  height: 20,
                ),
                // search bar and subscrib button  already don in home page
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
                textField("Please complete this required field.", 12,
                    FontWeight.bold, Colors.orange),
                // 6th one image and also text in this container
                Container(
                  color: Color(0xFFFFF7F7),
                  child: Column(
                    children: [
                      Image.asset("photo/w6.PNG"),
                      textField(
                          "“Solved my inventory issues with comment selling. Grew my sales and took less time than invoicing! We love the automated invoicing, waitlist features, "
                          "FB messenger integration and of course the Support Team!”",
                          30,
                          FontWeight.bold,
                          Colors.black),
                      SizedBox(
                        height: 50,
                      ),
                      textField(
                          "Jason Scott", 13, FontWeight.normal, Colors.grey),
                      SizedBox(
                        height: 15,
                      ),
                      textField("DEEP SOUTH POUT", 14, FontWeight.normal,
                          Colors.black),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                // subscribe button

                SizedBox(
                  height: 50,
                ),

                //from Key features to Signup page already done in home page

                //now here is start Integration
                textField("Integrations", 20, FontWeight.w600, Colors.black),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("photo/wf.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            "Facebook", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wmessage.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            "Messenger", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wstrip.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Stripe", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wpapal.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Paypal", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wa.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Avalara", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("photo/winstra.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            "Instagram", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wshop.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Shopify", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wss.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Sezzle", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wsqr.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField("Square", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("photo/wintercom.PNG"),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            "Intercom", 15, FontWeight.w600, Colors.black),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
      commentSellingPage(),
      LiveSelling(),
      makeShoppingGamePage(),
      SeamLessOnlineShopingPage(),
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
      InstagramPage(),
      facebookPage(),
      mobileAppPage(),
      WebsitePage(),
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
          womenSellingPage(),
          directSellingPage(),
          sportMerchandisePage(),
          homeDecorPage(),
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
          pricingPage(),
          getDemoPage(),
          webinarGuidPage(),
          ebookGuidPagePage(),
          insightBlogPage(),
        ]),
  ];
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
}
