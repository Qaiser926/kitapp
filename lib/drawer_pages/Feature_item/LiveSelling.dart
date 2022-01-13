import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/SeamlessOnlineShopping.dart';
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
import 'package:try_commented_sold/drawer_pages/UseCase/SportMerchandise.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/homeDecor.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/womenSelling.dart';
import 'package:try_commented_sold/expandableList/dataList.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/theme/color.dart';

import '../../homePage.dart';
import 'commentSelling.dart';

class LiveSelling extends StatefulWidget {
  @override
  State<LiveSelling> createState() => _LiveSellingState();
}

class _LiveSellingState extends State<LiveSelling> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: ListView(children: [
        Expanded(
            child: Container(
          child: Column(children: [
            textField(
                'Create personal shopping experiences at scale with live video',
                20,
                FontWeight.bold,
                Colors.black),
            _main_buton('Get a Demo', 15, () {}, FontWeight.bold),
          ]),
        )),
        // orange container
        Expanded(
            child: Container(
          color: CScolor.titlebackgroundColor,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('photo/g1.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: textField('Live in the App and on the Web', 23,
                  FontWeight.bold, Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textField(
                  'Control your content by going live on platforms you own: your branded mobile app and customized webstore. Experience the power of multi-channel live sales with the ability to host app and web exclusive sales or stream directly to your Facebook pages and groups simultaneously. All of this – while maintaining a single, centralized inventory across all sales channels.',
                  15,
                  FontWeight.normal,
                  Colors.white),
            ),
          ]),
        )),
        // second third container
        Expanded(
            child: Container(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('photo/g1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Create engaging content', 20, FontWeight.bold, Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Customers can watch, interact with other customers across the platforms, add to cart AND buy without ever leaving the video!',
                15,
                FontWeight.normal,
                Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('photo/g1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField('Provide a seamless shopping experience', 20,
                FontWeight.bold, Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Customers can experience the thrill of live sales, no matter where they watch.',
                15,
                FontWeight.normal,
                Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('photo/g1.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField('Multiple live streams, one inventory', 20,
                FontWeight.bold, Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Broadcast to your Facebook Page, Facebook Groups, your mobile app, and your webstore at once, all while updating a single, centralized inventory in real-time.',
                15,
                FontWeight.normal,
                Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Stream HD quality sales everywhere your customers shop',
                20,
                FontWeight.bold,
                Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Accelerate sales by selling live directly on Facebook, your branded mobile app, and custom webstore with CommentSold.',
                15,
                FontWeight.normal,
                Colors.black),
          ),
          SizedBox(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ExpandableList(),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(
                'Get actionable strategies to help boost revenue with engaging Facebook Live Sales:',
                20,
                FontWeight.normal,
                Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), //border corner radius
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
        ]))),
        Expanded(
          child: Container(
            color: CScolor.containerColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('photo/g1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textField(
                      "This software has transformed how I do Live Sales. CommentSold tracks the customers' comments so I don't have to and my customers LOVE it!",
                      20,
                      FontWeight.bold,
                      Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textField(
                      'Lindsey Martin', 17, FontWeight.normal, Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textField(
                      'ERIN LANE BAGS', 14, FontWeight.w500, Colors.black),
                ),
              ],
            ),
          ),
        ),
      Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textField(
                      "Customers love shopping live in the app and on the web!",
                      20,
                      FontWeight.bold,
                      Colors.black),
                ),
      ]),
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
}
