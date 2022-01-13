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
import 'package:try_commented_sold/drawer_pages/UseCase/SportMerchandise.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/womenSelling.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/homePage.dart';
import 'package:try_commented_sold/theme/color.dart';

import 'homeDecor.dart';

class directSellingPage extends StatefulWidget {

  @override
  _directSellingPageState createState() => _directSellingPageState();
}

class _directSellingPageState extends State<directSellingPage> {
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
      
      body:ListView(
        children: [

            Padding(
              padding: const EdgeInsets.only(top:60,left: 20,right: 20),
              child: textField("Be successful selling products from home",
                  20, FontWeight.w600, Colors.black),
            ),
            _main_buton("Get a Demo", 15, (){}, FontWeight.w700),
            //1st Image Container
            Container(
              child: Image.asset("photo/dspic1.PNG"),
            ),
            SizedBox(
              height: 40,
            ),
            textField("Get an increase in sales, recruiting, and brand recognition by combining the power of social media with "
                "tried-and-true direct sales methods and CommentSold’s automation tools.",
                15, FontWeight.normal, Colors.black45),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textField("Build community, connection, & sales",
                  20, FontWeight.w600, Colors.black),
            ),
            textField("CommentSold automates your social commerce,"
                " so you can focus on making your next big move to the top.",
                15, FontWeight.normal, Colors.black45),

            //drop down list is remining here,

        SizedBox(
          height: 60,
        ),


            // Container(
            //   child: Image.asset("photo/ds2.PNG"),
            // ),

            Container(
              color: Colors.blue,
              width: double.infinity,
              child: Column(
                children: [
                  textField("Wow your tribe", 30, FontWeight.bold, Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: textField("Direct sales companies require you to forge customer connections while growing sales. Fully focus on creating buzz and expanding your social selling empire, while "
                        "CommentSold carries out the task of "
                        "invoicing and inventory management.",
                        15, FontWeight.normal, Colors.white),
                  ),
                  _main_buton("Schedule a Call", 15, (){}, FontWeight.w600),
                  SizedBox(
                    height: 20,
                  ),
                  //1st Image Container



                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: Image.asset("photo/dspic3.PNG"),
            ),
            SizedBox(
              height: 30,
            ),
            textField("Automate all of your invoicing", 20, FontWeight.w600, Colors.black),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: textField("Save over 40 hours per week by"
                  "never sending another manual invoice.",
                  15, FontWeight.w600, Colors.black),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              child: Image.asset("photo/dspic4.PNG"),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textField("Sell everywhere with one inventory",
                  20, FontWeight.bold, Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: textField("Sync all of your selling channels "
                  "to a single, centralized inventory – updated in real-time.",
                  15, FontWeight.normal, Colors.black),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              child: Image.asset("photo/dspic5.PNG"),
            ),
            SizedBox(
              height: 20,
            ),
            textField("Gamify to set yourself apart", 20, FontWeight.w600, Colors.black),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: textField("Make your brand memorable & create addicting "
                  "shopping experiences with comment competition", 15, FontWeight.normal, Colors.black),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: textField("Get the latest in social marketing"
                  " & sales strategies to grow your direct selling business", 20, FontWeight.normal, Colors.black),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.orange,
                child:
                Center(
                  child: Text("Subscrib",style: TextStyle(
                    fontSize: 20,color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            // Container(
            //   child: Image.asset("photo/dspic6.PNG"),
            // ),
            Container(
              color: Color(0xFFFFF7F7),
              child: Column(
                children: [
                  Image.asset("photo/dspic6.PNG"),
                  textField("“Solved my inventory issues with comment selling. Grew my sales and took less time than invoicing! We love the automated invoicing, waitlist features, "
                      "FB messenger integration and of course the Support Team!”",
                      30, FontWeight.bold, Colors.black),
                  SizedBox(
                    height: 50,
                  ),
                  textField("Jason Scott", 13, FontWeight.normal, Colors.grey),
                  SizedBox(height: 15,),
                  textField("DEEP SOUTH POUT", 14, FontWeight.normal, Colors.black),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),

            ),

            //after this same to home page


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