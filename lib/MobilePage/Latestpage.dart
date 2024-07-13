import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({super.key});

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: 1000),
      child: Column(
        children: [
          Text(
            "My SKills",
            style: AppTextStyles.HeadingStyle(),
          ),
          Container(
            height: 3,
            width: 120,
            color: const Color.fromARGB(255, 92, 110, 161),
          ), SizedBox(height: 10,),
          FadeIn(
            duration: Duration(seconds:2 ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("My main area of interest is Software Development using flutter.I also excel in the Frontend using flutter.Apart from this,I have strong knowledge the technologies listed below which enables me to contribute to various projects.Also,I am always ready to learn new technologies.",style: AppTextStyles.Monterrest(),textAlign: TextAlign.justify,),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Flutter & Dart",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Git & GitHub",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.9,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            center:Text("90%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Postman",
            style: AppTextStyles.Monterrest(),
          ),
           CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Firebase",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Problem solving skill",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Flutter APIs",
            style: AppTextStyles.Monterrest(),
          ),
           CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "CCTV Technician",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Computer Teacher",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.5,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("50%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
           SizedBox(
            height: 40,
          ),
          Text(
            "Node Js",
            style: AppTextStyles.Monterrest(),
          ),
           CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.2,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("20%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
           SizedBox(
            height: 40,
          ),
          Text(
            "Java",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.3,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("30%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
           SizedBox(
            height: 40,
          ),
          Text(
            "Python",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("10%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
           SizedBox(
            height: 40,
          ),
          Text(
            "Html",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
           SizedBox(
            height: 40,
          ),
          Text(
            "CSS",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 0.5,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("50%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            " Good Communication",
            style: AppTextStyles.Monterrest(),
          ),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.butt,
            radius: 100,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20,
            percent: 1,
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade200,
            
            center:Text("100%",style: TextStyle(fontSize: 50,color: Colors.white),),
          ),
         
          
       
        ],
      ),
    );
  }
}
