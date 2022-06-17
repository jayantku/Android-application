import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("choose your role"),automaticallyImplyLeading: false),
      body: Column(children: [
        SizedBox(height: 70,),
        Text(
            'Please select your profile',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 100,
        ),
        Container(
            padding: EdgeInsets.all(26),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(12),

            ),child:Row(children: [
          Radio(
            value: 1,
            groupValue: _value,
            onChanged: (value){setState(() {
              _value=1;
            });

            },),
          Text(
              'Shipper',
              style: TextStyle(
                fontSize: 26,

              )),



        ],)
        ),
        SizedBox(
          height:50,
        ),
        Container(
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(12),

          ),child:Row(children: [Radio(
          value: 2 ,
          groupValue: _value,
          onChanged: (value){
            setState(() {
              _value=2;
            });
          },),
          Text(
              'Transporter',
              style: TextStyle(
                fontSize: 26,

              ))

        ],) ,


        ) ],),
    );

  }
}
