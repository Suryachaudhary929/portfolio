import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Me",style: AppTextStyles.Black(),),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 650,
          width: 1600,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.shade700,
            Colors.green.shade700,
          ], begin: Alignment.centerLeft, end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: Column(
              children: [
                FadeInRightBig(
                  duration: Duration(milliseconds: 10000),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/suryaa.jpg"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FadeInRightBig(
                  duration: Duration(milliseconds: 10000),
                  child: Text(
                    "A little bit about myself",
                    style: AppTextStyles.Abela(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                FadeInRightBig(
                  duration: Duration(milliseconds: 10000),
                  child: Text(
                    "I am Surya Narayan Chaudhary,Bsc.CSIT Student  from Biratnagar(Gramthan-03,jhostol Morang) as Flutter Developer.Experienced Mobile Apllication Developer with a demonstrated history of working in the computer software industry.Skilled in loyality Programs,Mobile Applications,java,web and last my most favourite Flutter framework(Builded more than 15 project on it).Problem solver,well-organised and quick learner with high attention to detail.Fan of Games,Movies,Books,and Coding of courses.Strong technical,communication and leadership skills.Interested in the development industry and working on ambitious projects with interesting people.",
                    style: AppTextStyles.style(),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
