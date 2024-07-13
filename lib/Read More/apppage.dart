import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Services", style: AppTextStyles.Normal()),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
          child: Column(
            
        children: [
          Container(
            height: 300,
            width: 500,
            child: Image.asset(
              "assets/images/services.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 1200,
            width: 2000,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.shade700,
              Colors.green.shade700,
            ], begin: Alignment.centerLeft, end: Alignment.bottomRight)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10, vertical: 5),
              child: Column(
                children: [
                  FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Text(
                        "Software Development",
                        style: AppTextStyles.Normal(),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Mobile application development is the process of creating software applications that run on a mobile device, and a typical mobile application utilizes a network connection to work with remote computing resources.Web development includes all relates development tasks,such as client-side scripting,server-side scripting,server and network security configuration,ecommerce development and content management system(CMS)development.Graphic designers make visuals to communicate certain messages.It is the art and practice of plannings and projecting ideas and experiences with visual and textual content,according to the Americian Institute of graphic arts.Digital marketing is to help you garner new traffic,leads,and sales for your business by reaching people looking for your products and services.Troubleshooting and diagnosing computer hardware and software issues,setting up computer networks and assisting employees and customers with IT-related problems.UI/UX design is all about identifying and solving user problems and creating intuitive,aesthetically-pleasing,interactive interfaces.Information technology (IT) is the hardware and software used to create, store, transmit, manipulate, and display information and data. Metaphorically, it is the lifeblood of the Information Age. On a high level, it is anything and everything that has to do with computing and communications.The definition of technology is the application of scientific knowledge for practical purposes or applications. Technology uses scientific principles, and applies them to change the environment in which humans live. Technology can also use scientific principles to advance industry or other human constructions.",
                      style: AppTextStyles.Monterrest(),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
