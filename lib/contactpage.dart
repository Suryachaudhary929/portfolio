
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Contact Me",style:AppTextStyles.HeadingStyle(),),
        Container(
          color: Colors.blueGrey,
          height: 3,
          width: 150,
        ),
        SizedBox(height: 10,),
        FadeInUp (
          duration: Duration(milliseconds: 1000),child: Text("I am just an invite to you",style:AppTextStyles.Monterrest(),)),
         SizedBox(height: 10,),
        FadeInRightBig(
          duration: Duration(milliseconds: 1000),
          child: Text("Below are the details to reach out to me!",style:AppTextStyles.Monterrest(),)),
        SizedBox(height: 15,),
        FadeInRightBig(
          duration: Duration(milliseconds: 800),
          child: Text("Contact Information",style:AppTextStyles.HeadingStyle(),)),
        Container(
          color: Colors.blueGrey,
          height: 3,
          width: 320,
        ),
        SizedBox(height: 15,),
        FadeInRightBig(
          duration: Duration(milliseconds: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20), 
                    ),
                    height: 40,
                    width: 40,
                    child:  Icon(Icons.phone,size:30,color: Colors.green,),
                   ),
                   SizedBox(width: 10,),
                    Text("+9779816340333",style: AppTextStyles.Monterrest(),),
                  ],
                ),
                
              ),
             
            ],
          ),
        ),
        SizedBox(height: 20,),
          FadeInRightBig(
            duration: Duration(milliseconds: 1000),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(100, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20), 
                    ),
                    height: 40,
                    width: 40,
                    child:  Icon(Icons.email,size:30,color: Colors.green,),
                   ),
                   SizedBox(width: 10,),
                    Text("suryachaudhary929@gmail.com",style: AppTextStyles.Monterrest(),),
                  ],
                ),
              ),
             
            ],
                  ),
          ),
        SizedBox(height: 20,),
          FadeInRightBig(
            duration: Duration(milliseconds: 1000),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(100, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20), 
                  ),
                  height: 40,
                  width: 40,
                  child:  Icon(Icons.location_city,size:30,color: Colors.green,),
                 ),
                 SizedBox(width: 10,),
                  Text("Biratnagar Morang(Gramthan-03,jhostol)",style: AppTextStyles.Monterrest(),),
                ],
              ),
             
            ],
                  ),
          ),
       
      ],
    );
  }
}