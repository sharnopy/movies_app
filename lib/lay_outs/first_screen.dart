import 'package:flutter/material.dart';
import 'package:newmovie/shared/style/color.dart';
import 'package:newmovie/tabs/browse.dart';
import 'package:newmovie/tabs/home.dart';
import 'package:newmovie/tabs/list.dart';
import 'package:newmovie/tabs/search.dart';

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
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon:Icon( Icons.home),label: "Home",backgroundColor: primarycolor),
          BottomNavigationBarItem(icon:Icon( Icons.search),label: "search",backgroundColor: primarycolor),
          BottomNavigationBarItem(icon:Icon( Icons.movie),label: "movie",backgroundColor: primarycolor),
          BottomNavigationBarItem(icon:Icon( Icons.book),label: "Watchlist",backgroundColor: primarycolor),
        ],
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [HomeTab(), SearchTab(), BrowseTab(), ListTab()];
}
