import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Model/models.dart';
import 'package:portfolio/font/font.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
    return FadeInUp(
      duration: Duration(milliseconds: 8000),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
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
              height: 10,
            ),
           Column(
            
            children: [
           Padding(
         padding: const EdgeInsets.all(20.0),
         child: GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 350,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 24,
                ),
                itemBuilder: (context, index) {
                  
                  return FadeInUp(
                    duration: Duration(milliseconds: 8000),
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
                                  Expanded(child: Image(image: AssetImage(images[index].imageicon),height: 110,width: 120,fit: BoxFit.fill,)),
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
           ),
          ],
        ),
      ),
    );
  }
}