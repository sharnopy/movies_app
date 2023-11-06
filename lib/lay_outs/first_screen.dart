import 'package:flutter/material.dart';
import 'package:newmovie/tabs/browse.dart';
import 'package:newmovie/tabs/home.dart';
import 'package:newmovie/tabs/list.dart';
import 'package:newmovie/tabs/searc.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = "firstScreen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/Home icon.png")),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/search-2.png")),
              label: "SEARCH",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/Icon material-movie.png")),
              label: "BROWSE",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/Icon ionic-md-bookmarks.png")),
              label: "WATCHLIST",
              backgroundColor: Colors.black),
        ],
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [HomeTab(), SearchTab(), BrowseTab(), ListTab()];
}
