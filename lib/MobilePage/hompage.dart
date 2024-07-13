import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fl_downloader/fl_downloader.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  int progress = 0;
  late StreamSubscription progressstream;
  String image= "https://media.licdn.com/dms/image/D4D22AQFyakYrAoentQ/feedshare-shrink_1280/0/1716880163282?e=2147483647&v=beta&t=RyB5JH1ZkWlB_hU7pFS-VXk2u8EQPaBkgzhGqd_r-z8";
  String FilePdfurl =
      "file:///C:/Users/ACER/AppData/Local/Microsoft/Windows/INetCache/IE/G6741QFE/My_Personal_CV[1].pdf";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlDownloader.initialize();
    progressstream = FlDownloader.progressStream.listen((event) {
      if (event.status == DownloadStatus.successful) {
        setState(() {
          progress = event.progress;
        });
        FlDownloader.openFile(filePath: event.filePath);
      } else if (event.status == DownloadStatus.running) {
        setState(() {
          progress = event.progress;
        });
      } else if (event.status == DownloadStatus.failed) {}
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    progressstream.cancel();
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // padding: EdgeInsets.only(
      //     bottom: size.height * 0.1,
      //     top: size.height * 0.1,
      //     left: size.height * 0.1,
      //     right: size.height * 0.1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/suryaa.jpg"),
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Hello,It's Me",
                      style: AppTextStyles.Monterrest(),
                    ),
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Surya Narayan",
                      style: AppTextStyles.Normal(),
                    ),
                  ),
                  Text(
                    "Chaudhary",
                    style: AppTextStyles.Normal(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       FadeIn(
                        duration: Duration(milliseconds: 1000 ),
                        child: Text(
                          "And I'm a",
                          style: AppTextStyles.Monterrest(),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      FadeInDown(
                         duration: Duration(milliseconds: 1000),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText(
                              "Flutter Developer",
                              textStyle: AppTextStyles.Abela(),
                            ),
                            TyperAnimatedText(
                              "Mobile Application Developer",
                              textStyle: AppTextStyles.Abela(),
                            ),
                            TyperAnimatedText(
                              "Computer Teacher",
                              textStyle: AppTextStyles.Abela(),
                            ),
                            TyperAnimatedText(
                              "CCTV Camera Technician",
                              textStyle: AppTextStyles.Abela(),
                            ),
                            TyperAnimatedText(
                              "Software Developer",
                              textStyle: AppTextStyles.Abela(),
                            ),
                          ],
                          pause: Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: size.width * 0.9,
                    child: FadeInDown(
                      duration: Duration(milliseconds: 1050),
                      child: Text( 
                        "I am Surya Narayan Chaudhary,Bsc.CSIT Student as Flutter Developer.Experienced Mobile Application Developer with a demonstrated history of working in the computer software industry.Skilled in loyality Programs,Mobile Applications,java,web and last my most favourite Flutter framework(Builded more than 5-10 project on it).I Design and develop cross-platform mobile applications using Flutter, focusing on delivering high-quality, responsive, and user-friendly experiences. I Collaborate closely with cross-functional teams,including designers and product managers, to translate project requirements into actionable development tasks.",
                        style: AppTextStyles.whiteMonterrest(),
                        textAlign: TextAlign.justify,
                        
                    
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launch("https://wa.me/9779816340333");
                          },
                          child: CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Colors.blue,
                            backgroundImage:
                                AssetImage("assets/images/whatapps.png"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                                "https://www.linkedin.com/in/surya-narayan-chaudhary-837304204");
                          },
                          child: CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Colors.blue,
                            backgroundImage:
                                AssetImage("assets/images/linkedln.png"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                                "https://www.facebook.com/surya.chaudharys/");
                          },
                          child: CircleAvatar(
                            maxRadius: 24,
                            backgroundColor: Color.fromARGB(255, 18, 26, 75),
                            backgroundImage:
                                AssetImage("assets/images/facebook.png"),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            launch("https://github.com/Suryachaudhary929");
                          },
                          child: CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Colors.blue,
                            backgroundImage:
                                AssetImage("assets/images/github.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1500),
                    child: MaterialButton(
                      color: Color.fromARGB(255, 63, 164, 105),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hoverColor: Colors.purple,
                      height: 40,
                      minWidth: 30,
                      onPressed: ()async {
                        var permission = await FlDownloader.requestPermission();
                        if(permission ==StoragePermissionStatus.granted){
                          FlDownloader.download(image,fileName: "My Biodata");
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text("Downloaded Successfully",style: TextStyle(color: Colors.green,fontSize: 20),))
                        );
                      },
                      child: FadeInDown(
                          duration: Duration(milliseconds: 1030),
                          child: Text(
                            "Download CV",
                            style: AppTextStyles.style(),
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
