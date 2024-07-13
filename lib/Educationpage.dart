import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "My Education",
            style: AppTextStyles.HeadingStyle(),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 700),
            height: 4,
            width: 160,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          FadeInUp(
            duration: Duration(milliseconds: 1000),
            child: Container(
              height: 450,
              width: 990,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide.none,
                    bottom: BorderSide.none,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(100, 0, 0, 0),
                    Color.fromARGB(100, 0, 0, 0),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    child: Text(
                      "2017-2021",
                      style: AppTextStyles.Yellow(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "Bachelor of Science in Computer Science and Information Technology(Bsc.CSIT)",
                      style: AppTextStyles.Normal(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "NIHAREEKA COLLEGE OF MANAGEMENT AND INFORMATION TECHNOLOGY",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "A bachelor's degree in computer science is a four-year program combining general education with computer science, mathematics, and technology coursework. This degree can prepare graduates to pursue roles in the workforce or advanced degrees.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FadeInUp(
            duration: Duration(milliseconds: 1000),
            child: Container(
              height: 350,
              width: 990,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide.none,
                    bottom: BorderSide.none,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(100, 0, 0, 0),
                    Color.fromARGB(100, 0, 0, 0),
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    child: Text(
                      "2015-2016",
                      style: AppTextStyles.Yellow(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "Greenland International College",
                      style: AppTextStyles.Normal(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "NEPAL EDUCATION BOARD(NEB)",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Computer Science is the study of computers and computational systems. Unlike electrical and computer engineers, computer scientists deal mostly with software and software systems; this includes their theory, design, development, and application.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ], 
              ),
            ),
          ),
          SizedBox(height: 30,),
          FadeInUp(
            duration: Duration(milliseconds: 1000),
            child: Container(
              height: 120,
              width: 990,
              color:  Color.fromARGB(100, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Text("20",style: AppTextStyles.Yellow(),),
                  SizedBox(height: 10,),
                  Text("Achievements",style: AppTextStyles.Monterrest(),)
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
           FadeInUp(
            duration: Duration(milliseconds: 1000),
             child: Container(
              
              height: 120,
              width: 990,
              color:  Color.fromARGB(100, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("60",style: AppTextStyles.Yellow(),),
                  SizedBox(height: 10,),
                  Text("Projects",style: AppTextStyles.Monterrest(),)
                ],
              ),
                   ),
           ),
          SizedBox(height: 40,),
           FadeInUp(
            duration: Duration(milliseconds: 1000),
             child: Container(
              
              height: 150,
              width: 990,
              color:  Color.fromARGB(100, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Here's My",style: AppTextStyles.Yellow(),),
                  SizedBox(height: 10,),
                  MaterialButton(
                    elevation: 0,
                    color: Colors.blue.shade700,
                    onPressed: (){
                      launch("https://github.com/Suryachaudhary929");
                    },
                    shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 40,
                            minWidth: 30,
                  hoverColor: Colors.red.shade700,
                  child: Text("GITHUB",style: AppTextStyles.Monterrest(),),
                  ),
                  SizedBox(height: 10,),
                  Text("Love to bring your digital visions to reality!",style: AppTextStyles.Monterrest(),)
                ],
              ),
                   ),
           ),
         
        ],
      ),
    );
  }
}
