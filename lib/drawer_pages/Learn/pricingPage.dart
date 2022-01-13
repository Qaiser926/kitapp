import 'package:flutter/material.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/LiveSelling.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/SeamlessOnlineShopping.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/makeShoppingGame.dart';
import 'package:try_commented_sold/drawer_pages/Learn/webinar_Guides.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/Facebook.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/Instagram.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/mobileApp.dart';
import 'package:try_commented_sold/drawer_pages/SellEveryWhere/yourWebsite.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/DirectSelling.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/SportMerchandise.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/homeDecor.dart';
import 'package:try_commented_sold/drawer_pages/UseCase/womenSelling.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/homePage.dart';
import 'package:try_commented_sold/theme/color.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import 'ebook_guid.dart';
import 'getDemo.dart';
import 'insightBlog.dart';

class pricingPage extends StatefulWidget {
  @override
  _pricingPageState createState() => _pricingPageState();
}

class _pricingPageState extends State<pricingPage> {
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
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Start 30-Day Free Trial',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          // Container for basic first card
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: double.infinity,
            height: 390,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basic ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          '\$49USD/ ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'month',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '+ 5% of sales',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Best for live retailers that are small or starting out.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Divider(
                        color: Colors.yellow,
                        thickness: 3,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   E-commerce website',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Facebook live selling',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Inventory & shipping management',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Automated invoices',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    //ElevatedButton for Trail
                    Container(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      side: BorderSide(
                                          color:
                                              CScolor.titlebackgroundColor))),
                          backgroundColor: MaterialStateProperty.all(
                              CScolor.titlebackgroundColor),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => next trail()),
                          // );
                        },
                        child: Text("30-Day Free Trial"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // code for detail text
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Row(
                        children: const [
                          Text(
                            'Detail',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff1F7EEF)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff1F7EEF),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Container for business 2nd card
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: double.infinity,
            height: 470,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Business',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          '\$49USD/ ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'month',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '+ 3% of sales',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Best for live retailers selling more than \$5,000 per month.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Divider(
                        color: Colors.blue,
                        thickness: 3,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   E-commerce website',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Facebook live selling',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Inventory & shipping management',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Automated invoices',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Mobile app (iOS & Android)',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Automated content creation',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Priority support',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    //ElevatedButton for Trail
                    Container(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      side: BorderSide(
                                          color:
                                              CScolor.titlebackgroundColor))),
                          backgroundColor: MaterialStateProperty.all(
                              CScolor.titlebackgroundColor),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => next trail()),
                          // );
                        },
                        child: Text("30-Day Free Trial"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // code for detail text
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Row(
                        children: const [
                          Text(
                            'Detail',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff1F7EEF)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff1F7EEF),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Container for Enterprise 3rd card
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: double.infinity,
            height: 550,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enterprise',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Priced for teams of all sizes',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Best for live retailers selling more than \$5,000 per month.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Divider(
                        color: Colors.green,
                        thickness: 3,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   E-commerce website',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Facebook live selling',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Inventory & shipping management',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Automated invoices',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Mobile app (iOS & Android)',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Automated content creation',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Priority support',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Onsite implementation',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   1:1 sales & business coaching',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Text(
                          '   Dedicated account strategist',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    //ElevatedButton for Trail
                    Container(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                      side: BorderSide(
                                          color:
                                              CScolor.titlebackgroundColor))),
                          backgroundColor: MaterialStateProperty.all(
                              CScolor.titlebackgroundColor),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => next trail()),
                          // );
                        },
                        child: Text("30-Day Free Trial"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // code for detail text
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Row(
                        children: const [
                          Text(
                            'Detail',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff1F7EEF)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xff1F7EEF),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // Text in mid
          Text('(Dont worry you can switch plans at any time)'),

          SizedBox(
            height: 5,
          ),

          //Container for Live selling , mobile App etc
          Container(
            height: 3070,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                // code for Live selling
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/live_selling_pic.PNG'),
                ),
                Text(
                  'Live Selling',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Host real-time video sales on your mobile app, webstore,'
                      ' Facebook page, and Facebook group simultaneously.'
                      ' Create a virtual fitting room for your shoppers by '
                      'trying on products and addressing comments as they come in. '
                      'Live video includes a professional text overlay with a dynamic'
                      ' product display to make purchasing instructions simple for viewers.'),
                ),

                // code for mobile app
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/mobile_app_pic.PNG'),
                ),
                Text(
                  'Mobile App',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Put your brand in your customers pocket with your own mobile app.'
                      ' Customers can shop 24/7 on their phones from your private sales channel, '
                      'and push notifications inform, engage, and excite shoppers when'
                      ' you go live or announce new products. No outside development work or'
                      ' coding is required.'),
                ),

                // code for Custom E-commerce Website
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/E_commerce_pic.PNG'),
                ),
                Text(
                  'Custom E-commerce Website',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Bypass noisy newsfeeds and anchor your brand with your '
                      'own digital storefront. The CommentSold Webstore is customizable,'
                      ' so you can tell your story and showcase your products the way '
                      'you want. Get discovered, build brand credibility, and give your'
                      ' business a home on the web with built-in marketing tools and '
                      'easy-to-use design features.'),
                ),

                // code for Custom Comment Selling
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/Comment_Selling_pic.PNG'),
                ),
                Text(
                  'Comment Selling',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Turn comments into shopping carts on Facebook and Instagram,'
                      ' and create a faster way to check out online. Customers receive '
                      'an instant message to checkout when they comment "sold" on '
                      'your video or image post, streamlining the process for '
                      'both buyer and seller. Significantly reduce time spent manually '
                      'invoicing your customers, eliminate human error, and never miss a'
                      ' potential sale with CommentSolds auto-invoicing features.'),
                ),

                // code for Inventory Management
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/Inventory_Management_pic.PNG'),
                ),
                Text(
                  'Inventory Management',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Manage your inventory, sales, and fulfillment across'
                      ' warehouses and selling channels from a single, centralized dashboard. '
                      'The all-in-one CommentSold Dashboard is designed to automate '
                      'and simplify your time-consuming manual tasks while providing a '
                      'comprehensive view of your business operations in one place. '
                      'Inventory counts update in real‑time no matter where you sell your products.'),
                ),

                // code for Marketing Automation
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('photo/MarketingAutomation_pic.PNG'),
                ),
                Text(
                  'Marketing Automation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 5, 6),
                  child: Text(
                      'Create a consistent and engaging brand image by automating '
                      'marketing messages across all channels. "Set it and forget it" and '
                      'schedule posts and announcements for later to free up time and'
                      ' focus on what matters most in your business. Utilize automated email,'
                      ' retargeting ads, and social media messages to communicate'
                      ' with customers regularly.'),
                ),

                //code for line
                SizedBox(
                  height: 3,
                ),
                const SizedBox(
                  width: 360,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),

                //code for see enterprize etc
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  width: double.infinity,
                  height: 250,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.keyboard_arrow_left,
                                color: Color(0xff1F7EEF),
                                size: 35,
                              ),
                              Text(
                                'See Enterprise    See Business',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xff1F7EEF)),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Color(0xff1F7EEF),
                                size: 35,
                              ),
                            ],
                          ),

                          Text(
                            'Basic ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('For new retailers'),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '\$49USD/ ',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'month',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '+ 5% of sales',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),

                          //ElevatedButton for Trail
                          Container(
                            height: 50,
                            width: 300,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        side: BorderSide(
                                            color:
                                                CScolor.titlebackgroundColor))),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => next trail()),
                                // );
                              },
                              child: Text(
                                "30-Day Free Trial",
                                style: TextStyle(
                                    color: CScolor.titlebackgroundColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // code for feature
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: double.infinity,
                              height: 30,
                              color: Color(0xffEFF8FA),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '   Features',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Social Selling on Facebook & Instagram',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Facebook Live Sales with Overlay',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Unlimited Products',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Unlimited Staff Accounts',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Inventory Management',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Shipping & Fulfillment',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'E-commerce Webstore',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    )),

                // code for mobile app
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: double.infinity,
                              height: 30,
                              color: Color(0xffEFF8FA),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '   Mobile App',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'White Label Mobile App (iOS & Android)',
                                style: TextStyle(fontSize: 15),
                              ),

                              // here use the typicons for minus so be carefull here
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Facebook Live Sales with Overlay',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Push Notifications',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    )),

                // code for Support
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: double.infinity,
                              height: 30,
                              color: Color(0xffEFF8FA),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '   Support',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Chat Support',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Assisted Implementation',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Onsite Implementation',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    )),

                // code for Strategy
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: double.infinity,
                              height: 30,
                              color: Color(0xffEFF8FA),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '   Strategy',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Dedicated Account Strategist',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'One-on-One Live Sale Coaching',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Inventory Analysis & Recommendations',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Warehouse & Operations Consulting',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Typicons.minus,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    )),

                // code for Shipping
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              //  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              width: double.infinity,
                              height: 30,
                              color: Color(0xffEFF8FA),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '   Shipping',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Print Shipping Labels',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Shipping Rates',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'USPS Commercial',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Third Party Shipping Providers',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 8,
                ),

                //ElevatedButton for Trail
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              side: BorderSide(
                                  color: CScolor.titlebackgroundColor))),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => next trail()),
                      // );
                    },
                    child: Text(
                      "30-Day Free Trial",
                      style: TextStyle(color: CScolor.titlebackgroundColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
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

  static commentSellingPage() {}
}
