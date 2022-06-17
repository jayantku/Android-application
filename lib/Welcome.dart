import 'package:flutter/material.dart';
import 'package:lasttry/register.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  var items=["english"];
String dropdownvalue='english';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Application")),
       resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body:SafeArea(child: Padding(padding: EdgeInsets.symmetric(vertical: 50,horizontal:34)
    ,child: Column(children: [
      Image.asset('image-formats.png',
      width:30),SizedBox(
        height:100 ,
      ),
      Text('Please Select Your language',
      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),SizedBox(
        height: 15,
      ),
      Text("You can change the language",style:TextStyle(fontSize: 19),),
      Text("at any time",style: TextStyle(fontSize: 19),),
     SizedBox(
      height: 50,
     ),
     SizedBox(
      height: 50,
      width: double.infinity,
      child:DropdownButton(
               
              // Initial Value
              value: dropdownvalue,
               
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),   
               
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
     ),SizedBox(height: 60,),SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),



                  ),
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'NEXT',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              )
     
            
    
    

    ]),),) 
    );
     
  }
}
