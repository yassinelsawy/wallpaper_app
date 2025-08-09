// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables




import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:fontresoft/fontresoft.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:wallpaper_app/categoryscreen.dart';
import 'package:wallpaper_app/favoritescreen.dart';
import 'package:wallpaper_app/homescreen.dart';
import 'package:wallpaper_app/settingsscreen.dart';
import 'package:wallpaper_app/global.dart' as global;

import 'global.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool isFavourite = false;
  List<Widget> screens = [
     HomeScreen(),
     CategoryScreen(),
     FavouriteScreen(),
     SettingsScreen(),
  ];
  List<Widget>_appbar=[];
  @override
  void initState() {
    super.initState();
    _appbar = [
      AppBar(
        title:  Container(
          width: 573,
          //height: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: const Color(0xffF2F2F2),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: const Offset(0, 3), // changes position of shadow
            //   ),
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Find Wallpaper.. ',
                hintStyle: Font.poppins().copyWith(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 172, 170, 170),
                ),
                suffixIcon: const Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications, size: 30),
          ),
        ],
      ),
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              count.value = 0;
            });
          },
        ),
        title: Text('Category',
          style: Font.sFProDisplay().copyWith(
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: const Color(0xff292D32),
          ),
        ),

        centerTitle: true,

      ),
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              count.value= 0;
            });
          },
        ),
        title: Text('Favourites', 
          style: Font.sFProDisplay().copyWith(
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: const Color(0xff292D32),
          ),
        ),
        centerTitle: true,
      ),
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              count.value = 0;
            });
          },
        ),
        title: Text('Settings', 
          style: Font.sFProDisplay().copyWith(
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: const Color(0xff292D32),
          ),
        ),
        centerTitle: true,
      ),

    ];
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    global.count.addListener(() {
      setState(() {
        count.value = global.count.value;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar[count.value] as PreferredSizeWidget?,
      body: screens[count.value],
      bottomNavigationBar: ResponsiveNavigationBar(
        outerPadding: EdgeInsets.fromLTRB(20, 5, 20, 20),
        selectedIndex: count.value,
        // onTabChange: _onItemTapped,
        onTabChange: (value) {
          setState(() {
            count.value= value;
          });
        },
        
        activeIconColor: Color(0xff292D32),
        inactiveIconColor: Color(0xffA8A8A8),
        backgroundColor: Color(0xffE1F4FF),

        textStyle: Font.sFProDisplay().copyWith(
          fontSize: 27,
          fontWeight: FontWeight.w500,
          //color: const Color(0xff292D32),
        ),
         navigationBarButtons: const <NavigationBarButton>[
          NavigationBarButton(
            icon: Icons.home_filled,
            text:  'Home',
            backgroundColor: Color(0xffE1F4FF),
          ),
          NavigationBarButton(
            icon: Icons.category_rounded,
            text: 'Category',
            backgroundColor: Color(0xffE1F4FF),
          ),
          NavigationBarButton(
            icon: Icons.favorite,
            text: 'Favourite',
            backgroundColor: Color(0xffE1F4FF),
          ),
          NavigationBarButton(
            icon: Icons.settings,
            text: 'Settings',
            backgroundColor: Color(0xffE1F4FF),
          ),
          
        ],

        
      ),
    );
  }
}