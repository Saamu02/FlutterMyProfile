import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: 15.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: CircleAvatar(
                  radius: 72.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/pic_2.jpg"),
                  ),
                ),
              ),
              TabsMobile(
                text: "Home",
                route: "/",
              ),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(
                text: "Works",
                route: "/works",
              ),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(
                text: "Blog",
                route: "/blog",
              ),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(
                text: "About",
                route: "/about",
              ),
              SizedBox(
                height: 20.0,
              ),
              TabsMobile(
                text: "Contact",
                route: "/contact",
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher("assets/instagram.svg",
                      "https://www.instagram.com/i_ussamairfan/"),
                  urlLauncher("assets/twitter.svg", ""),
                  urlLauncher("assets/github.svg", "https://github.com/Saamu02")
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 108.0,
                      backgroundImage: AssetImage("assets/pic_1.jpg"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 35.0),
                    SizedBox(height: 10.0),
                    Sans(
                        "Hello! Ussama here. I specialize in Front-end Development",
                        15.0),
                    Sans(
                        "I strive to ensure astounding performance with state of ",
                        15.0),
                    Sans(
                        "the art security for Android, iOS, Web, Mac, Linux and Windows",
                        15.0),
                    SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("iOS"),
                        tealContainer("Android"),
                        tealContainer("Web"),
                        tealContainer("Windows"),
                        tealContainer("Firebase"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/webL.png",
                    reverse: false,
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Web development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                  "I'm here to build your presence online with state of the art web apps",
                  15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    reverse: true,
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("App development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                  "I'm here to build your presence online with state of the art mobile apps",
                  15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    reverse: false,
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Backend development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans("Do you want your backend to be highly scalable and secure?",
                  15.0),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
