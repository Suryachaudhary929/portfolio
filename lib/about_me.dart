import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Read%20More/about_me_page.dart';
import 'package:portfolio/font/font.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        FadeInUp(
          duration: Duration(milliseconds: 1000),
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: CircleAvatar(
              radius: 155,
              backgroundImage: AssetImage("assets/images/suryaa.jpg"),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
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
                width: size.width * 0.6,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  child: Text(
                    "I am Surya Narayan Chaudhary,Bsc.CSIT Student as Flutter Developer.Experienced Mobile Apllication Developer with a demonstrated history of working in the computer software industry.Skilled in loyality Programs,Mobile Applications,java,web and last my most favourite Flutter framework(Builded more than 15 project on it).",
                    style: AppTextStyles.style(),
                    textAlign: TextAlign.justify,
                  ),
                ),
                
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(right: 445,left: 150),
                  child: MaterialButton(
                          color: Color.fromARGB(255, 63, 164, 105),
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                          shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hoverColor: Colors.purple,
                          height: 40,
                          minWidth: 30,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutMePage()));
                          },
                        child: Text("Read More",style: AppTextStyles.style(),),
                        ),
                ),
          ],
        ),
        
      ],
    );
  }
}
