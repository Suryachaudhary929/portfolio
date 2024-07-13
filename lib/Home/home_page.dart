import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fl_downloader/fl_downloader.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Menubutton = <String>[
    "assets/images/whatapps.png",
    "assets/images/linkedln.png",
    "assets/images/facebook.png",
    "assets/images/github.png",
  ];
  var MenuBI;
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
          padding: EdgeInsets.only(
              bottom: size.height * 0.1,
              top: size.height * 0.1,
              left: size.height * 0.1,
              right: size.height * 0.1),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: Duration(milliseconds: 1000),
                        child: Text(
                          "Hello,It's Me",
                          style: AppTextStyles.Monterrest(),
                        ),
                      ),
                      FadeInDownBig(
                        duration: Duration(milliseconds: 1000),
                        child: Text(
                          "Surya Narayan Chaudhary",
                          style: AppTextStyles.HeadingStyles(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          FadeIn(
                            duration: Duration(milliseconds: 1000),
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
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width * 0.5,
                        child: FadeInDown(
                          duration: Duration(milliseconds: 1000),
                          child: Text(
                            "I am Surya Narayan Chaudhary,Bsc.CSIT Student as Flutter Developer.Experienced Mobile Apllication Developer with a demonstrated history of working in the computer software industry.Skilled in loyality Programs,Mobile Applications,java,web and last my most favourite Flutter framework(Builded more than 5-10 project on it).I Design and develop cross-platform mobile applications using Flutter, focusing on delivering high-quality, responsive, and user-friendly experiences. I Collaborate closely with cross-functional teams, including designers and product managers, to translate project requirements into actionable development tasks.",
                            style: AppTextStyles.style(),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1000),
                        child: SizedBox(
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Menubutton.length,
                                  itemBuilder: ((context, index) {
                                    return InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(20),
                                      hoverColor: Colors.blue.shade700,
                                      splashColor: Colors.purple.shade700,
                                      onHover: (value) {
                                        setState(() {
                                          if (value) {
                                            MenuBI = index;
                                          } else {
                                            MenuBI = null;
                                          }
                                        });
                                      },
                                      child: buildMenuButton(
                                        asset: Menubutton[index],
                                        hover: MenuBI == index ? true : false,
                                      ),
                                    );
                                  })),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeInDown(
                        duration: Duration(milliseconds: 1000),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 180,),
                          child: MaterialButton(
                            color: Color.fromARGB(255, 63, 164, 105),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
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
                                duration: Duration(milliseconds: 1000),
                                child: Text(
                                  "Download CV",
                                  style: AppTextStyles.style(),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: FadeInLeftBig(
                      duration: Duration(milliseconds: 1000),
                      child: CircleAvatar(
                         radius: 155,
                        backgroundImage: AssetImage("assets/images/suryaa.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              
                
            
            ],
          ),
        );  }
        buildMenuButton({required String asset, required bool hover}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 18, 26, 75),
        ),
        color: Color.fromARGB(255, 18, 26, 75),
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(6),
      child: Image.asset(
        asset,
        fit: BoxFit.cover,
      ),
    );
  }
}
