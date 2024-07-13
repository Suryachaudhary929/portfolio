import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';
import 'package:url_launcher/url_launcher.dart';

class FindMePage extends StatefulWidget {
  const FindMePage({super.key});

  @override
  State<FindMePage> createState() => _FindMePageState();
}

class _FindMePageState extends State<FindMePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FadeInRightBig(
        duration: Duration(milliseconds: 1000),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Find me on",
              style: AppTextStyles.Abela(),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                launch("https://www.youtube.com/channel/UCu0qMBwUXqrGwDJpdHClb7Q");
              },
              child: CircleAvatar(
                maxRadius: 18,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage("assets/images/youtube.png"),
              ),
            ),
          
              
               SizedBox(
                width: 10,
              ),
            
            InkWell(
              onTap: () {
                launch("https://wa.me/9779816340333");
              },
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Color.fromARGB(255, 19, 19, 80),
                backgroundImage: AssetImage("assets/images/whatapps.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: (){
                launch("https://www.linkedin.com/in/surya-narayan-chaudhary-837304204");
              },
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Color.fromARGB(255, 19, 19, 80),
                backgroundImage: AssetImage("assets/images/linkedln.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: (){
                launch("https://github.com/Suryachaudhary929");
              },
              child: CircleAvatar(
                maxRadius: 20,
                backgroundColor: Color.fromARGB(255, 19, 19, 80),
                backgroundImage: AssetImage("assets/images/github.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: (){
                launch("https://www.facebook.com/surya.chaudharys/");
              },
              child: CircleAvatar(
                maxRadius: 24,
                backgroundColor: Color.fromARGB(255, 19, 19, 80),
                backgroundImage: AssetImage("assets/images/facebook.png"),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 15,),
     
      FadeInRightBig(
        duration: Duration(milliseconds: 1000),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: FadeInRightBig(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Made by",style: TextStyle(fontSize: 12,color: Colors.white),),
                 SizedBox(width: 3,),
                 Text("Surya Narayan Chaudhary",style: AppTextStyles.green(),),
                 SizedBox(width: 3,),
                 Text("with flutter 3.19.3",style: TextStyle(fontSize: 12,color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
