
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/font/font.dart';

class RusumePage extends StatefulWidget {
  const RusumePage({super.key});

  @override
  State<RusumePage> createState() => _RusumePageState();
}

class _RusumePageState extends State<RusumePage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("My Resume",style: AppTextStyles.HeadingStyle(),),
              AnimatedContainer(
                duration:  Duration(milliseconds: 6000),
                height: 4,
                width: 160,
                color: Colors.white,
              ),
              SizedBox(height: 1,),
              FadeInUp(
                duration: Duration(milliseconds: 6000),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("A Software Developer with entry-level experience specializing in user interface design, application development, data security, and continuous improvement. Adept at identifying opportunities to enhance the user experience and develop new features to improve app functionality.A passionate Flutter developer with a strong expertise in cross-platform apps, REST Api, UI/UX, Widget, and State Management is here to turn your app vision into reality! With a record of cutting edge solutions and Proven in API integration, third-party libraries, and performance optimization. Adept at debugging for high-quality, responsive apps. Agile collaborator, committed to industry trends.",style: AppTextStyles.Monterrest(),textAlign: TextAlign.justify,),
                )),
               
            ],
          ),
    );
  }
}