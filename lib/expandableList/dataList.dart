import 'package:flutter/material.dart';
import 'package:try_commented_sold/expandableList/data/advanced_tiles.dart';

class ExpandableList extends StatefulWidget {
  @override
  _ExpandableListState createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: ListView(
              // physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  // width: 335,
                  child: ListView.builder(
                    itemCount: vehicles.length,
                    itemBuilder: (context, i) {
                      return Card(
                        margin: const EdgeInsets.only(top: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ExpansionTile(
                          title: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  vehicles[i].title,
                                  style: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff022C43)),
                                ),
                              ],
                            ),
                          ),
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Column(
                                children: _buildExpandableContent(vehicles[i]),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// code for expandable list view
_buildExpandableContent(Wgtclass wgtveriable) {
  List<Widget> columnContent = [];

  for (String content in wgtveriable.contents ) {
    columnContent.add(
      ListTile(
        title: Text(
          content,
          style: const TextStyle(fontSize: 18.0),
        ),
        
        // leading: Icon(vehicles.icon),
      ),
      
    );
  }

  return columnContent;
}

class Wgtclass {

  final String title;
  List<String> contents = [];
  final IconData icon;

  Wgtclass(
   
    this.title,
    this.contents,
     this.icon,
  ); //this.icon);
}

List<Wgtclass> vehicles = [
  Wgtclass(
    
    'Sell on Facebook',
    [
      'Convert comments to sales with fully automated, real-time Comment Selling on Facebook.',
      'Schedule your posts in advance',
      'Instantly invoice shoppers'
    ],
Icons.motorcycle,

  ),
  Wgtclass(
   
    'Host Live Sales',
    ['Widget no. 1', 'Widget  no. 2', 'Widget  no. 3'],
Icons.motorcycle,
  ),
  Wgtclass(
    'Sell on Instagram',
    ['Widget no. 1', 'Widget  no. 2', 'Widget  no. 3'],
Icons.motorcycle,
  )
];
