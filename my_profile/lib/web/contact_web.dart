import 'package:flutter/material.dart';
import 'package:my_profile/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 600.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
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
                    route: "/route",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Contact",
                    route: "/contact",
                  ),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold("Contact me", 40.0),
              SizedBox(height: 20.0),
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
              SizedBox(height: 15.0),
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
      ),
    );
  }
}