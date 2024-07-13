import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Educationpage.dart';
import 'package:portfolio/Home/home_page.dart';
import 'package:portfolio/MobilePage/Latestpage.dart';
import 'package:portfolio/MobilePage/about.dart';
import 'package:portfolio/MobilePage/hompage.dart';
import 'package:portfolio/MobilePage/projectpage.dart';
import 'package:portfolio/MobilePage/servicespage.dart';
import 'package:portfolio/Profile/profile_animation.dart';
import 'package:portfolio/Rusume/rusume.dart';
import 'package:portfolio/about_me.dart';
import 'package:portfolio/contactpage.dart';
import 'package:portfolio/contactus.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/findme.dart';
import 'package:portfolio/font/font.dart';
import 'package:portfolio/skills.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainDashboard extends StatelessWidget {
  const MainDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 2000) {
        return DesktopPage();
      } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 2000) {
        return DesktopPage();
      } else {
        return MobilePage();
      }
    });
  }
}

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  // ignore: unused_field
  final ItemScrollController _itemScrollController = ItemScrollController();
  final screenlists = <Widget>[
    HomePage(),
    AboutMe(),
    SkillPage(),
    ProfileAnimation(),
    RusumePage(),
    ExperiencePage(),
    EducationPage(),
    SizedBox(
      height: 40,
    ),
    ContactPage(),
    ContactUsPage(),
    FindMePage(),
  ];
  final Menuitems = <String>[
    "Home",
    "About Us",
    "Services",
    "Skills",
    "Rusume",
    "Experience",
    "Education",
    "Contact",
  ];

  var menuIndex = 0;

  final onMenuHover = Matrix4.identity()..scale(1.0);
  void scrollTo({required int index}) {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        constraints: BoxConstraints(
          maxWidth: 1200,
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 18, 26, 75),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 18, 26, 75),
            toolbarHeight: 90,
            titleSpacing: 50,
            elevation: 0,
            title: FadeInDown(
              child: Row(
                children: [
                  // CircleAvatar(
                  //   radius: 30,
                  //   backgroundImage: AssetImage("assets/images/suryaa.jpg"),
                  // ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Text(
                    "SURYA",
                    style: AppTextStyles.headerText(),
                  ),
                  Spacer(),
                  SizedBox(
                      height: 30,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: Menuitems.length,
                          itemBuilder: ((context, index) {
                            return InkWell(
                              onTap: () {
                                scrollTo(index: index);
                              },
                              borderRadius: BorderRadius.circular(20),
                              onHover: (value) {
                                setState(() {
                                  if (value) {
                                    menuIndex = index;
                                  } else {
                                    menuIndex = 0;
                                  }
                                });
                              },
                              child: buildNavBarAnimatedContainer(
                                  index, menuIndex == index ? true : false),
                            );
                          })))
                ],
              ),
            ),
          ),
          body: Scrollbar(
            child: ScrollablePositionedList.builder(
                itemScrollController: _itemScrollController,
                itemCount: screenlists.length,
                itemBuilder: (context, index) {
                  return screenlists[index];
                }),
          ),
        ));
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 115 : 100,
      transform: hover ? onMenuHover : null,
      duration: Duration(milliseconds: 200),
      child: Text(
        Menuitems[index],
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  int menuIndex = 0;
  final screenlists = <Widget>[
    HomeScreenPage(),
    About(),
    ServicePage(),
    RusumePage(),
    LatestPage(),
    ProjectPage(),
    ExperiencePage(),
    EducationPage(),
    ContactPage(),
    ContactUsPage(),
    FindMePage(),
  ];
  final Menuitems = <String>[
    "Home",
    "About Us",
    "Services",
    "Rusume",
    "Skills",
    "Latest projects",
    "Experience",
    "Education",
    "Contact"
  ];

  void scrollTo({required int index}) {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuIndex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 26, 75),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 26, 75),
        toolbarHeight: 90,
        titleSpacing: 50,
        elevation: 0,
        title: FadeInDown(
          child: Row(
            children: [
              Text(
                "SURYA",
                style: AppTextStyles.headerText(),
              ),
              Spacer(),
              PopupMenuButton(
                  position: PopupMenuPosition.under,
                  constraints: BoxConstraints.tightFor(height: 450, width: 400),
                  icon: Icon(Icons.menu_sharp),
                  iconSize: 40,
                  color: Colors.limeAccent,
                  itemBuilder: (BuildContext context) => Menuitems.asMap()
                      .entries
                      .map((e) => PopupMenuItem(
                            onTap: () {
                              scrollTo(index: e.key);
                            },
                            child: Text(
                              e.value,
                              style: AppTextStyles.Black(),
                            ),
                          ))
                      .toList())
            ],
          ),
        ),
      ),
      body: Scrollbar(
        child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemCount: screenlists.length,
            itemBuilder: (context, index) {
              return screenlists[index];
            }),
      ),
    ));
  }
}
