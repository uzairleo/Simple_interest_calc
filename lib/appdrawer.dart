import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:si_calculator/Aboutme.dart';
import 'package:si_calculator/setting.dart';

class Customdrawer extends StatefulWidget {
  @override
  _CustomdrawerState createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 17, 123, 116),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(280.0),
              bottomRight: Radius.circular(280.0))),
      child: ListView(
        children: <Widget>[
          Container(
            height: 220.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(600),   
                bottomRight: Radius.circular(4.0),
              ),
              //  color: Colors.blue
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/leo.png'),
                          radius: 50.0,
                        ),
                        Text(
                          'Uzair Leo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          "Student of Islamia College\n Peshawar | BSSE | Google\n Flutter Android/ios developer\n | GDG & DSC member | \nTech enthusiast ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Color.fromARGB(255, 82, 80, 80)),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(color: Color.fromARGB(255, 82, 80, 80)),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Setting()));
            },
          ),
          Divider(color: Color.fromARGB(255, 82, 80, 80)),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () {
              _sharebottomsheet(context);
            },
          ),
          Divider(color: Color.fromARGB(255, 82, 80, 80)),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("About me"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Aboutme()));
            },
          ),
          Divider(
            color: Color.fromARGB(255, 82, 80, 80),
            height: 5,
          ),
        ],
      ),
    );
  }

_sharebottomsheet(BuildContext context)
{
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context){
      return  Container(
      height: 100.0,
        child:Wrap(
          children: <Widget>[
            Center(
              child: Text("Share using social media",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0,),
                IconButton(
                    icon: Icon(FontAwesomeIcons.whatsapp),
                    onPressed: (){},
                ),
                SizedBox(width: 20.0,),
                IconButton(
                  icon: Icon(FontAwesomeIcons.facebook),
                  onPressed: (){},
                ),
                SizedBox(width: 20.0,),
                IconButton(
                  
                  icon: Icon(FontAwesomeIcons.facebookMessenger),
                  onPressed: (){},
                ),
                SizedBox(width: 20.0,),
                IconButton(
                  icon: Icon(FontAwesomeIcons.linkedin),
                  onPressed: (){},
                ),
                SizedBox(width: 20.0,),
                IconButton(
                  
                  icon: Icon(FontAwesomeIcons.twitter),
                  onPressed: (){},
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
}
