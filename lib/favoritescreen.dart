import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('No Favourite found', 
            style: Font.sFProDisplay().copyWith(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: const Color(0xffB6B6B6),
            ),
          ),
        ),
      ],
    );
  }
}