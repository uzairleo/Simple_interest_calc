import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutme extends StatefulWidget {
  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About me"),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/fa.png'),
                          fit: BoxFit.cover),
                      // color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0))),
                ),
                Positioned(
                  top: 25.0,
                  // bottom: 20.0,
                  left: 120.0,
                  // right: 20.0,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        // backgroundImage: Az ssetImage('images/leo.png'),
                        minRadius: 65.0,
                        // radius: 50.0,
                        backgroundColor: Colors.deepPurple,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/leo.png'),
                          minRadius: 60.0,
                        ),
                      ),
                      Text(
                        "Uzair LeO ",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "\t\t\t\t\t\t\t\t\t\tHello 👋 I'm Uzair Leo a Google Flutter expert for flutter ,dart & web tech.I love Coding and developing new softwares.I am also a University Student(student of Islamia college university of peshawar doing Bachelor of software engineering (2nd Semeseter)).I am too much passionate about my work  .To the outside world I am just an ordinary software developer but secretly with the help of my Lappy I fight bugs and create awesome content for the community. ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                // letterSpacing: 1.0,
                fontSize: 15
                
                ),
              
            ),
            Divider(color:Colors.white,),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Email"),
              subtitle: Text(
                "uzair.jan336@gmai.com"
              ),
              onTap: (){
                _urllauncher('http://www.gmail.com');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              subtitle: Text("+92 316 8874012"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Address"),
              subtitle: Text(
                  "Room no 52 ,Harding hostel ,Islamia College University Peshawar,Pakistan"),
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.facebook),
              title: Text("Facebook"),
              subtitle: Text("www.facebook.com/uzairleo2272"),
              onTap: () {
                _urllauncher('https://web.facebook.com/uzairleo.336');
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.youtube),
              title: Text("Youtube"),
              subtitle: Text("www.youtube.com/uzairleo"),
              onTap: () {
                _urllauncher(
                    'https://www.youtube.com/channel/UC08FH1Cyl74fI4ynieX-hbw?view_as=subscriber');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.github),
              title: Text("Github"),
              subtitle: Text("github.com/uzairleo"),
              onTap: () {
                _urllauncher('https://github.com/uzairleo');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.twitter),
              title: Text("Twitter"),
              subtitle: Text("@uzairleo"),
              onTap: () {
                _urllauncher('https://twitter.com/uzairleo2');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(FontAwesomeIcons.linkedin),
              title: Text("LinkedIn"),
              subtitle: Text("www.linkedin.com/in/leo-uzair-78462b191/"),
              onTap: () {
                _urllauncher(
                    'https://www.linkedin.com/in/leo-uzair-78462b191/');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Website"),
              subtitle: Text("uzairleo.blogspot.com"),
              onTap: () {
                _urllauncher('http://uzairleo.blogspot.com');
              },
            ),
            Divider(),
          ],
        ));
  }

  _urllauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not Launched $url';
    }
  }
}
