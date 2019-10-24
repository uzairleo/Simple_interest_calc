import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:si_calculator/appdrawer.dart';

class SIcalcbody extends StatefulWidget {
  @override
  _SIcalcbodyState createState() => _SIcalcbodyState();
}

class _SIcalcbodyState extends State<SIcalcbody> {
  var _currencies = ['Ruppees', 'Dollar', 'Yen'];
  var _currentselecetedbutton = 'Dollar';
  String displayresult = "";
  TextEditingController principal = TextEditingController();
  TextEditingController rot = TextEditingController();
  TextEditingController term = TextEditingController();

  var _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,

      drawer: Customdrawer(),
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        leading: Icon(Icons.school),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Form(
        key: _formkey,
      child:ListView(
        children: <Widget>[
          _getimage(),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0 * 2, right: 5.0 * 2, bottom: 5.0),
            child: TextFormField(
              validator: (String value){
                if(value.isEmpty){
                  return 'Please enter the principal';
                } 
              },
              controller: principal,
              decoration: InputDecoration(
                  labelText: 'Principal',
                  hintText: 'enter principal eg: 1200',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0))),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0 * 2, right: 5.0 * 2, bottom: 5.0),
            child: TextFormField(
              validator: (String value)
              {
                if(value.isEmpty){
                  return "Please enter the rate of interest";
                }
              },
              controller: rot,
              decoration: InputDecoration(
                  labelText: 'Rate of Interest',
                  hintText: ' in percent',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0))),
              keyboardType: TextInputType.number,
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5.0 * 2, right: 5.0 * 2, bottom: 5.0),
                  child: TextFormField(
                    validator: (String value){
                      if(value.isEmpty){
                        return "please enter the terms";
                      }
                    },
                    controller: term,
                    decoration: InputDecoration(
                      labelText: 'Term',
                      hintText: 'Term',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Expanded(
                child: _getdropdownbutton(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0 * 2, right: 5.0 * 2, bottom: 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Color.fromARGB(255, 17, 123, 116),
                      colorBrightness: Brightness.dark,
                      child: Text("Calculate"),
                      onPressed: () {
                        
                        setState(() {
                        if (_formkey.currentState.validate()) 
                        {
                          displayresult = _sicalclogic();
                        }
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.black,
                      colorBrightness: Brightness.dark,
                      child: Text("Reset"),
                      onPressed: () {
                        setState(() {
                          displayresult = _reset();
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Text(
            displayresult,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0),
          ),
        ],
      ),),
    );
  }

  _getimage() {
    AssetImage assest = AssetImage('images/money.png');
    Image image = Image(
      image: assest,
      height: 120,
      width: 120,
    );
    return Container(
      margin: EdgeInsets.all(35.0),
      child: image,
    );
  }

  _getdropdownbutton() {
    return DropdownButton<String>(
      items: _currencies.map((String dropdownitem) {
        return DropdownMenuItem(
          value: dropdownitem,
          child: Text(dropdownitem),
        );
      }).toList(),
      value: _currentselecetedbutton,
      onChanged: (String newselectedbutton) {
        setState(() {
          _currentselecetedbutton = newselectedbutton;
        });
      },
    );
  }

  String _reset() {
    principal.text = "";
    rot.text = "";
    term.text = "";
    _currentselecetedbutton = _currencies[0];
    String result = "";
    return result;
  }

  String _sicalclogic() {
    double pinciple = double.parse(principal.text);
    double rOt = double.parse(rot.text);
    double t = double.parse(term.text);
    double tpa;
    tpa = pinciple + (pinciple * rOt * t) / 100;
    String result =
        "After $t years your investment will be $tpa $_currentselecetedbutton";
    return result;
  }
}
