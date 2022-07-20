import 'package:flutter/material.dart';



class CheckIn extends StatefulWidget{
  const CheckIn({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() => _CheckInPage();
  
}
 class _CheckInPage extends State<StatefulWidget>{

  bool Academic = false;
  bool EC = false;
  bool Work = false;
  bool Social = false;
  bool Everyday = false;
  bool Personal = false;
  TextStyle checkBoxStyle = TextStyle(fontFamily: 'Avenir', fontSize: 10, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {

    //getColor
    Color getColor(Set<MaterialState> states){
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Colors.blue;
    }


    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 0, bottom: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Academic', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: Academic,
                        onChanged: (bool? value) {
                          setState(() {
                            Academic = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Extra-curriculars', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: EC,
                        onChanged: (bool? value) {
                          setState(() {
                            EC = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Work', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: Work,
                        onChanged: (bool? value) {
                          setState(() {
                            Work = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Personal', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: Personal,
                        onChanged: (bool? value) {
                          setState(() {
                            Personal = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Social', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: Social,
                        onChanged: (bool? value) {
                          setState(() {
                            Social = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Everyday', style: checkBoxStyle,),
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: Everyday,
                        onChanged: (bool? value) {
                          setState(() {
                            Everyday = value!;
                          });
                        },
                      )
                    ]
                  ),
                ),
              ),
            ],
          )
        )  
        
      ),
    );
  }
  
 }
