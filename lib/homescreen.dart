// ignore_for_file: prefer_const_constructors

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isFavourite = false;
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Container(
                width: 638,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/coal.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 5),
              SmoothPageIndicator(
                controller:  PageController(viewportFraction: 0.8),
               count: 3, effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.black,
                dotHeight: 10,
                dotWidth: 10,
              ),),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    
                    'Categories',
                    style: Font.poppins().copyWith(
                      fontSize: 33.97,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff29323B),
                    ),
                  ),
                  const Spacer(),
                  // Text(
                  //   'View All',
                  //   style: Font.poppins().copyWith(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.w600,
                  //     color: const Color(0xff0071E3),
                  //   ),
                  // ),
                  InkWell(
                    onTap: (
                    ) {
                      setState(() {
                        count.value = 1;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreen()));
                      // Navigator.pushAndRemoveUntil(context, 
                      // MaterialPageRoute(builder: (context) => const CategoryScreen())
                      // , (route) => false);
                    },
                    child: Text(
                      'View All',
                      style: Font.poppins().copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff0071E3),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/abstract.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Abstract',
                                        style: Font.poppins().copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      // const Icon(
                                      //   FluentIcons.heart_24_regular,
                                      //   color: Colors.white,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/gaming.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Gaming',
                                        style: Font.poppins().copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      // const Icon(
                                      //   FluentIcons.heart_24_regular,
                                      //   color: Colors.white,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/music.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Music',
                                        style: Font.poppins().copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      // const Icon(
                                      //   FluentIcons.heart_24_regular,
                                      //   color: Colors.white,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/girl.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5), // Semi-transparent black overlay
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Girl',
                                        style: Font.poppins().copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                //physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 400,
                        height: 96,
                        decoration: BoxDecoration(
                          //color: Color      bottomNavigationBar: ResponsiveNavigationBar(),  color: Color(0xffE1F4FF).withOpacity(0.5), 
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: BorderSide.strokeAlignCenter),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                        [
                          Container(
                            width: 120,
                            //height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              gradient: LinearGradient(
                                colors: const [
                                  Color(0xff00FFF0),
                                  Color(0xff6747E7),
                                ],
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Icon( Icons.trending_up_outlined, color: Colors.white, size: 25),
                                  Text(
                                    'Trending',
                                    style: Font.sFProDisplay().copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 40),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback: (bounds)=>LinearGradient(
                                    colors: const  [
                                      Color(0xff6747E7), Color(0xff00FFF0)],
                                    ).createShader(bounds),
                                  child: Icon( Icons.access_time_filled, color: Colors.white, size: 30),
                                ),
                                
                                ShaderMask(
                                  shaderCallback: (bounds)=>LinearGradient(
                                    colors: const  [
                                      Color(0xff6747E7), Color(0xff00FFF0)],
                                    ).createShader(bounds),
                                  child: Text(
                                    'Recent',
                                    style: Font.sFProDisplay().copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 40),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback: (bounds)=>LinearGradient(
                                    colors: const  [
                                      Color(0xff6747E7), Color(0xff00FFF0)],
                                    ).createShader(bounds),
                                  child: Icon( Icons.energy_savings_leaf, color: Colors.white, size: 30),
                                ),
                                
                                ShaderMask(
                                  shaderCallback: (bounds)=>LinearGradient(
                                    colors: const  [
                                      Color(0xff6747E7), Color(0xff00FFF0)],
                                    ).createShader(bounds),
                                  child: Text(
                                    'New',
                                    style: Font.sFProDisplay().copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 210,
                          height: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/red forest.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // IconButton(onPressed: (){}, icon:
                        // const Icon(FluentIcons.heart_24_regular, color: Colors.white, size: 30),),
                        Positioned(
                          bottom: 10, // Adjust the top position as needed
                          left: 10, // Adjust the right position as needed
                          child: Container(
                            width: 49,
                            height: 49,
                            padding: const EdgeInsets.all(5), // Adjust padding as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Circular shape
                              color: Colors.black.withOpacity(0.5),
                               
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavourite = !isFavourite;
                                });
                              },
                              icon:  Icon(
                                // ignore: dead_code
                                isFavourite? FluentIcons.heart_24_filled:FluentIcons.heart_24_regular ,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 210,
                          height: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/beach.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10, // Adjust the top position as needed
                          left: 10, // Adjust the right position as needed
                          child: Container(
                            width: 49,
                            height: 49,
                            padding: const EdgeInsets.all(5), // Adjust padding as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Circular shape
                              color: Colors.black.withOpacity(0.5),
                               
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavourite = !isFavourite;
                                });
                              },
                              icon:  Icon(
                                isFavourite?FluentIcons.heart_24_filled: FluentIcons.heart_24_regular ,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 11),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 210,
                          height: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/purple.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10, // Adjust the top position as needed
                          left: 10, // Adjust the right position as needed
                          child: Container(
                            width: 49,
                            height: 49,
                            padding: const EdgeInsets.all(5), // Adjust padding as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Circular shape
                              color: Colors.black.withOpacity(0.5),
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavourite = !isFavourite;
                                });
                              },
                              icon:  Icon(
                                isFavourite?FluentIcons.heart_24_filled: FluentIcons.heart_24_regular ,
                                color: Colors.white,
                                size: 25,
                              ),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 210,
                          height: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/todd.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10, // Adjust the top position as needed
                          left: 10, // Adjust the right position as needed
                          child: Container(
                            width: 49,
                            height: 49,
                            padding: const EdgeInsets.all(5), // Adjust padding as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Circular shape
                              color: Colors.black.withOpacity(0.5),
                               
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isFavourite = !isFavourite;
                                });
                              },
                              icon:  Icon(
                                isFavourite?FluentIcons.heart_24_filled: FluentIcons.heart_24_regular ,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )

          ],),
        ),
      );
  }
}