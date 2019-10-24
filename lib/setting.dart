import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' as prefix0;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _value1=false;
  bool _value2=false;
  double size=15.0;
  Color theme=Color.fromARGB(255,29,27,27);
  Color iconcolor=Colors.white;
  Color fontcolor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme,
      appBar: AppBar(
        title: Text("Settings",),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.settings,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            value: _value1,
            // activeColor: Colors.green,
            title: Text('Font Size',style: TextStyle(fontSize: size,color: fontcolor)),
            secondary: Icon(FontAwesomeIcons.textHeight,color: iconcolor,),
            onChanged: (bool value){
              _onchanged1(value);
              _largefont(20.0);
            },
          ),
          Divider(),
          SwitchListTile(
            value:_value2,
            title: Text("Dark theme",style: TextStyle(fontSize: size,color: fontcolor)),
            secondary: Icon(FontAwesomeIcons.themeco,color: iconcolor,),
            onChanged: (bool value){
              _onchanged2(value);
              _darkthem(Colors.white);
            },
          ),
          
          Divider(),

          _feedbacktile(),
          
          Divider(),
          
           ListTile(
            leading: Icon(Icons.info,color: iconcolor,),
            title: Text("version",style: TextStyle(fontSize: size,color: fontcolor)),
            onTap: (){
              _versiondilogue(context);
        
            },
        
          ),
          
          Divider(),

        ],
      ),
    );
  }
  _feedbacktile()
  {
    return Row(
      children: <Widget>[
        SizedBox(width: 15.0,),
        Icon(Icons.feedback,color: iconcolor,),
        SizedBox(width: 30.0,),
        Text("Feedback",style: TextStyle(fontSize: size,color: fontcolor)),
        SizedBox(width: 80.0,),
      Icon(Icons.star ,color: Colors.yellow,),
      Icon(Icons.star,color: Colors.yellow,),
      Icon(Icons.star,color: Colors.yellow,),
      Icon(Icons.star_half,color: Colors.yellow,),
      Icon(Icons.star),
      ],
    );
  }
  _onchanged1(bool value)
  {
        setState(() {
     _value1=value; 
    //  size=20.0;
    });
    
  }
  _largefont(double newsize){
    if(size==15.0){
    setState(() {
      size =newsize; 
    });}else
    {
      setState(() {
        size=15.0;
      });
    }
  }
  _onchanged2(bool value){
    setState(() {
     _value2=value; 
    });
  }
  _darkthem(Color color)
    {
      if (theme==Color.fromARGB(255,29,27,27)) 
      {
       setState(() {
        theme=color;
        fontcolor=Colors.black;
        iconcolor=Colors.black;
       }); 
      }else{
        theme=Color.fromARGB(255,29,27,27);
        fontcolor=Colors.white;
        iconcolor=Colors.white;
      }
    }

  _versiondilogue(BuildContext context)
  {
    showDialog(
      context: context,
      builder: (BuildContext contex)
    {
      return AlertDialog(
        actions: <Widget>[
          RaisedButton(
            child: Text("OK",style: TextStyle(color:fontcolor,)),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
          title: Text("Version 1.01",style: TextStyle(color: fontcolor),),
        content: Text("This version is still incomplete so veiwers be patient for next version ",style: TextStyle(fontSize: size,color: fontcolor)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          
          ),),

      );
    }
    );

  }
}
