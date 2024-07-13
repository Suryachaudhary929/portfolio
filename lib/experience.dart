import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/font/font.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "My Experience",
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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 660,
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
                      "Aug,2023-March 2024",
                      style: AppTextStyles.Yellow(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "CCTV Camera Technician",
                      style: AppTextStyles.Normal(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "HK.TECH.PVT.LTD",
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
                      "CCTV technician provides preventive and remedial maintenance services on various ESS systems to include; IDS, ACS, CCTV, gates and turnstiles, cameras, duress switches, card readers, and fiber optic data transmission systems.Installation: Setting up new equipment, installing CCTV systems and connecting cabling. Configuration: Configuring CCTV systems so they are compatible with the necessary software and connected to the correct wiring. Maintenance: Repairing faulty equipment, upgrading software and monitoring performance.Disassembling and inspecting camera equipment to determine the problem, repairing, cleaning and calibrating cameras and broken parts and testing cameras for performance.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        FadeInUp(
          duration: Duration(milliseconds: 1000),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 400,
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
                      "May,2022-Mar 2023",
                      style: AppTextStyles.Yellow(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Text(
                      "Flutter Developer",
                      style: AppTextStyles.Normal(),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "YAJ TECH PVT.LTD.",
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
                      "YAJ Tech is an innovative software development, web design & web hosting company aimed at making people, their lives and business better and smarter. We might not have grown old bones but there is one thing we can assure: perfection with satisfaction. We bring out the smartest products and experiences with our young dedicated extraordinary team.",
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
        ),
       
      ],
    );
  }
}
