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
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/yourWebsite.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/SportMerchandise.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/homeDecor.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/womenSelling.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/homePage.dart';
import 'package:try_commented_sold/theme/color.dart';

class mobileAppPage extends StatefulWidget {

  @override
  _mobileAppPageState createState() => _mobileAppPageState();
}

class _mobileAppPageState extends State<mobileAppPage> {
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

  static directSellingPage() {}

}