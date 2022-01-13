import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try_commented_sold/drawer_pages/Feature_item/commentSelling.dart';
import 'package:try_commented_sold/expandableList/dataList.dart';
import 'package:try_commented_sold/expandableList/model/advanced_tile.dart';
import 'package:try_commented_sold/homePage.dart';
import 'package:try_commented_sold/theme/color.dart';

import 'drawer_pages/Feature_item/LiveSelling.dart';

GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
void main() {
  runApp(tryCommentedSold());
}

class tryCommentedSold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tryCommentedSoldPage(),
    );
  }
}

class tryCommentedSoldPage extends StatefulWidget {
  @override
  State<tryCommentedSoldPage> createState() => _tryCommentedSoldPageState();
}

class _tryCommentedSoldPageState extends State<tryCommentedSoldPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  var currentPage = DrawerSections.homePage;
  int activeState = 0;
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      // endDrawer: Drawer(),
    
      // body: HomePage(),
      body: Scaffold(
        body: commentSellingPage(),
        key: _scaffoldKey,

       
        // body: Center(
        //   // child:DrawerExpandableListview(),
        //   child: HomePage(),
        // ),
      ),

      // body:MyHomePage(),
    );
  }

  


 
}

enum DrawerSections {
  homePage,
  LiveSelling,
}
