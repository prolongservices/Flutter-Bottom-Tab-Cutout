import 'package:flutter/material.dart';
import 'package:flutter_bottom_tab_cutout/tab_item.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

final tabs = ['Home', 'Profile', 'Help', 'Settings'];

class _MainScreenState extends State<MainScreen> {
  int selectedPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[selectedPosition]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomTab(),
    );
  }

  _buildBottomTab() {
    return BottomAppBar(
      color: Colors.deepPurple,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TabItem(text: tabs[0], icon: Icons.home, isSelected: selectedPosition == 0, onTap: () {
            setState(() {
              selectedPosition = 0;
            });
          },),
          TabItem(text: tabs[1], icon: Icons.person, isSelected: selectedPosition == 1, onTap: () {
            setState(() {
              selectedPosition = 1;
            });
          },),
          SizedBox(width: 48,),
          TabItem(text: tabs[2], icon: Icons.help, isSelected: selectedPosition == 2, onTap: () {
            setState(() {
              selectedPosition = 2;
            });
          },),
          TabItem(text: tabs[3], icon: Icons.settings, isSelected: selectedPosition == 3, onTap: () {
            setState(() {
              selectedPosition = 3;
            });
          },),
        ],
      ),
    );
  }
}
