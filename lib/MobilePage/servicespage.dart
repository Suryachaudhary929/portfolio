import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Read%20More/apppage.dart';
import 'package:portfolio/font/font.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  bool isapp = false,
      isweb = false,
      isgraphic = false,
      ismarketing = false,
      isit = false,
      isui = false;
      
  // final onHoverActive = Matrix4.identity()..translate(0, 1, 0);
  // final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  @override
  Widget build(BuildContext context) {
    
    return FadeInUp(
      duration: Duration(milliseconds: 1000),
      child: Column(
        children: [
          Text(
            "My Services",
            style: AppTextStyles.HeadingStyle(),
          ),
          Container(
            height: 3,
            width: 170,
            color: Color.fromARGB(255, 210, 211, 216),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                    
                    });
                  },
                  onHover: (value) {
                    setState(() {
                      isapp = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "Mobile App Development",
                      icon: Icons.android,
                      text:
                          "Mobile application development is the process of creating software applications that run on a mobile device, and a typical mobile application utilizes a network connection to work with remote computing resources.",
                      hover: isapp)),
               SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isweb = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "Dart Programming",
                      icon: Icons.developer_board,
                      text:
                          " It can be used to develop web and mobile apps as well as server and desktop applications. Dart. Paradigm. Multi-paradigm: functional, imperative, object-oriented, reflective.",
                      hover: isweb)),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isgraphic = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "Web Development",
                      icon: Icons.web,
                      text:
                    "Displaying your programming skills and web development experience is key. It is also a good idea to mention the education or web development certifications you've earned to add credibility. Curate your projects. Display only your best work.",
                      hover: isgraphic)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      ismarketing = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "Digital Marketing",
                      icon: Icons.bar_chart_rounded,
                      text:
                          "Digital marketing is to help you garner new traffic,leads,and sales for your business by reaching people looking for your products and services.",
                      hover: ismarketing)),
             SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isit = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "IT Support",
                      icon: Icons.computer,
                      text:
                          "Troubleshooting and diagnosing computer hardware and software issues,setting up computer networks and assisting employees and customers with IT-related problems.",
                      hover: isit)),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isui = value;
                    });
                  },
                  child: BuildAnimatedContainer(
                      title: "UI/UX Design",
                      icon: Icons.brush,
                      text:
                          "UI/UX design is all about identifying and solving user problems and creating intuitive,aesthetically-pleasing,interactive interfaces.",
                      hover: isui)),
            ],
          )
        ],
      ),
    );
  }
   description(){
return Column(
  children: [
AppPage(),
  ],
);
   }

  AnimatedContainer BuildAnimatedContainer({
    required String title,
    icon,
    text,
    required bool hover,
  }) {
    return AnimatedContainer(
        height: hover ? 290 : 300,
        width: hover ? 400 : 300,
        alignment: Alignment.center,
        // transform: hover ? onHoverActive : onHoverRemove,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: hover
                ? Border.all(
                    color: Color.fromARGB(255, 130, 130, 134), width: 3)
                : null,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 4.0,
                  blurRadius: 4.5,
                  offset: Offset(3.0, 4.5)),
            ],
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 4, 48, 84),
                Color.fromARGB(255, 4, 48, 84)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            )),
        duration: Duration(milliseconds: 600),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: AppTextStyles.Monterrest(),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: AppTextStyles.style(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            MaterialButton(
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AppPage()));
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully jump to services page")));
               },
              child: Text(
                "Read More",
                style: AppTextStyles.style(),
              ),
            ),
          ],
        ));
  }
}
