import 'package:flutter/material.dart';
import 'package:my_profile/components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              expandedHeight: 400.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact me", 35.0),
              TextForm(
                text: "First Name",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type first name",
              ),
              TextForm(
                text: "Last Name",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your last name",
              ),
              TextForm(
                text: "Email",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your email address",
              ),
              TextForm(
                text: "Phone Number",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your phone number",
              ),
              TextForm(
                text: "Message",
                containerWidth: widthDevice / 1.4,
                hintText: "Message",
                maxLines: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
