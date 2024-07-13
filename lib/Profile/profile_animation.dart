import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Model/models.dart';

import 'package:portfolio/font/font.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);
  final List images = [
    data(
        title: "merosafar App",
        image: "assets/images/MeroSafar.jpg",
        subtitle:
            "Provides maps and navigation services to help users find their way around a new city.Allows users to read and write reviews and ratings for hotels,attractions and activities.",
        imageicon: "assets/images/all.png"),
    data(
        title: "ChatApp",
        image: "assets/images/chat.jpg",
        subtitle:
            "It allows you to communicate with yours customers in web chat rooms.Use ChatApp to send messages,emoticons and images.",
        imageicon: "assets/images/chat.png"),
    // data(
    //     title: "merosafar App",
    //     image: "assets/images/chat.jpg",
    //     subtitle:
    //         "Allows users to create and customize their itineraries by adding attractions,activities and accommodations.",
    //     imageicon: "assets/images/safar.png"),
         data(
        title: "60 + Projects completed",
        image: "assets/images/60.png",
        subtitle:
            "Congratulations to me,I have completed 60 + projects.",
        imageicon: "assets/images/60.png"),
  ];
  var hoverIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My SKills",
          style: AppTextStyles.HeadingStyle(),
        ),
        FadeInRightBig(
          duration: Duration(milliseconds: 1000),
          child: Container(
            height: 3,
            width: 120,
            color: const Color.fromARGB(255, 92, 110, 161),
          ),
        ), SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("My main area of interest is Software Development using flutter.I also excel in the Frontend using flutter.Apart from this,I have strong knowledge the technologies listed below which enables me to contribute to various projects.Also,I am always ready to learn new technologies.",style: AppTextStyles.Monterrest(),textAlign: TextAlign.justify,),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Flutter & Dart",
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
         CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
         CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
         CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10500,
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
          style: AppTextStyles.Normal(),
        ),
        CircularPercentIndicator(
          circularStrokeCap: CircularStrokeCap.butt,
          radius: 100,
          animation: true,
          animationDuration: 10900,
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
          "My Latest Projects",
          style: AppTextStyles.HeadingStyle(),
        ),
        Container(
          height: 3,
          width: 220,
          color: const Color.fromARGB(255, 92, 110, 161),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: images.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 330,
              mainAxisSpacing: 20,
              crossAxisSpacing: 24,
            ),
            itemBuilder: (context, index) {
              
              return FadeInUpBig(
                duration: Duration(milliseconds: 1600),
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        hoverIndex = index;
                      }
                    });
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(images[index].image),
                            fit: BoxFit.fill,
                          )),
                      Visibility(
                        visible: index == hoverIndex,
                        child: AnimatedContainer(
                          transform: index == hoverIndex ? onHoverEffect:null,
                          duration: Duration(milliseconds: 300),
                          padding:
                              EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 4, 48, 84).withOpacity(1.0),
                                  Color.fromARGB(255, 4, 48, 84).withOpacity(1.0),
                                  Color.fromARGB(255, 4, 48, 84).withOpacity(1.0),
                                  //  Color.fromARGB(255, 4, 48, 84).withOpacity(1.0),
                                  //  Color.fromARGB(255, 4, 48, 84).withOpacity(1.0),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Image(image: AssetImage(images[index].imageicon),height: 110,width: 145,fit: BoxFit.fill,)),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                images[index].title,
                                style: AppTextStyles.HeadingStyle(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                images[index].subtitle,
                                style: AppTextStyles.style(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
              );
            },
          ),
        ),
       
      ],
    );
  }
}
