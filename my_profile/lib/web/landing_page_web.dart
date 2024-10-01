import 'package:flutter/material.dart';
import 'package:my_profile/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/pic_1.jpg"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Ussama Irfan", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/instagram.svg",
                    "https://www.instagram.com/i_ussamairfan/"),
                urlLauncher("assets/twitter.svg", ""),
                urlLauncher("assets/github.svg", "https://github.com/Saamu02")
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(
              title: "Home",
              route: "/",
            ),
            Spacer(),
            TabsWeb(
              title: "Works",
              route: "/works",
            ),
            Spacer(),
            TabsWeb(
              title: "Blog",
              route: "/blog",
            ),
            Spacer(),
            TabsWeb(
              title: "About",
              route: "/about",
            ),
            Spacer(),
            TabsWeb(
              title: "Contact",
              route: "/contact",
            ),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // First Section
          Container(
            height: deviceHeight - 56.0, // 56 is the height of the app bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold(
                        "Hello, I'm",
                        15.0,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold(
                      "Ussama Irfan",
                      55.0,
                    ),
                    Sans("Front-end Developer", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          "iusamairfan@gmial.com",
                          15.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          "+92 300 XXX XXXX",
                          15.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          "Rawalpindi, Pakistan",
                          15.0,
                        ),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage: AssetImage("assets/pic_1.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Second Section
          Container(
            height: deviceHeight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/web.jpg",
                  height: deviceHeight / 1.9,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold(
                      "About me",
                      40.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                      "Hello! Ussama here. I specialize in Front-end Development",
                      15.0,
                    ),
                    Sans(
                      "I strive to ensure astounding performance with state of ",
                      15.0,
                    ),
                    Sans(
                      "the art security for Android, iOS, Web, Mac, Linux and Windows",
                      15.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "Flutter",
                            15.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "iOS",
                            15.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "Android",
                            15.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "Web",
                            15.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "Windows",
                            15.0,
                          ),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans(
                            "Firebase",
                            15.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Third Section
          Container(
            height: deviceHeight / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(
                  "What I do?",
                  40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                      reverse: false,
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                      reverse: false,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Fourth Section
          Container(
            height: deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(
                  "Contact me",
                  40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          text: "First Name",
                          containerWidth: 350.0,
                          hintText: "Please type your first name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          text: "Email",
                          containerWidth: 350.0,
                          hintText: "Please type your email address",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          text: "Last Name",
                          containerWidth: 350.0,
                          hintText: "Please type your last name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          text: "Phone Number",
                          containerWidth: 350.0,
                          hintText: "Please type phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  text: "Message",
                  containerWidth: deviceWidth / 1.55,
                  hintText: "Please type your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
