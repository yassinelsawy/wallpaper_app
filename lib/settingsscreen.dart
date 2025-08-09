import 'package:flutter/material.dart';
import 'package:fontresoft/fontresoft.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String>titles = ['Push Notifications','Invite a friend','Rate this app','Feedback & bugs','Privacy Policy','Terms & Conditions'];
  List<String>iicon = ['assets/Group 403.png','assets/Group 396.png','assets/Group 398.png','assets/Group 401.png','assets/Group 399.png','assets/Group 402.png'];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return 
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top:20,bottom: 20),
                  child: ListTile(
                    leading: Image.asset(iicon[index],height: 60,width: 60,),
                    title: Text(titles[index]),
                    trailing: index == 0?
                         Switch(
                            value: true,
                            onChanged: (value) {
                              setState(() {
                                value = !value;
                              });
                            },
                            activeTrackColor: const Color(0xff191E31),
                    
                          )
                    
                        : const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(height: 20,);
            },          
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/ig.png'),height: 50,width: 50,),
              SizedBox(width: 20,),
              Image(image: AssetImage('assets/facebook.png'),height: 50,width: 50,),
              SizedBox(width: 20,),
              Image(image: AssetImage('assets/twitter.png'),height: 50,width: 50,),
            ],
          ),
        ),
        const SizedBox(height: 20,),
              Text('Like & Follow us', style: Font.sFProDisplay().copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: const Color(0xffB6B6B6),
              ),
              ),
      ],

    );
  }
}