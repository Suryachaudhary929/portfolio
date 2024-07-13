import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Read%20More/about_me_page.dart';
import 'package:portfolio/font/font.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final Size size= MediaQuery.of(context).size;
    return   Padding(
      padding: const EdgeInsets.all(15.0),  
      child: Column(
              children: [
                RichText(
                    text: TextSpan(
                        text: "About",
                        style: AppTextStyles.HeadingStyles(),
                        children: [
                      TextSpan(
                        text: "Me",
                        style: AppTextStyles.HeadingStyle(),
                      )
                    ])),
                Container(
                  color: Colors.blueGrey,
                  height: 3,
                  width: 130,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Flutter Developer",
                  style: AppTextStyles.Monterrest(),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "I am Surya Narayan Chaudhary,Bsc.CSIT Student as Flutter Developer.Experienced Mobile Apllication Developer with a demonstrated history of working in the computer software industry.Skilled in loyality Programs,Mobile Applications,java,web and last my most favourite Flutter framework(Builded more than 15 project on it).",
                      style: AppTextStyles.Monterrest(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInDown(
                  duration: Duration(milliseconds: 1000),
                  child: MaterialButton(
                    color: Color.fromARGB(255, 63, 164, 105),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hoverColor: Colors.purple,
                    height: 40,
                    minWidth: 30,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutMePage()));
                    },
                    child: Text(
                      "Read More",
                      style: AppTextStyles.style(),
                    ),
                  ),
                ),
              ],
            ),
    );
          
  }
}