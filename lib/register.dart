import 'package:flutter/material.dart';
import 'otp.dart';
import 'package:lasttry/otp.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Registration"),),
      body: Column(children: [
        SizedBox(
          height: 100,
        ),
        Text(
          'Please enter your mobile number',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20,),
        Text("You'll recieve a 6 code ",style:TextStyle(fontSize: 19,color: Colors.black38,),),
        Text("to verify next",style:TextStyle(fontSize: 19,color: Colors.black38,),),
        SizedBox(
          height: 28,
        ),
        Container(
          padding: EdgeInsets.all(28),

        child: Column(children:[
           TextFormField(
                      keyboardType: TextInputType.number,
                    controller: _controller,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        prefix: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '+91-',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ),
                    )
                    ,
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Otp(_controller.text))
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
                            'CONTINUE',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
        ] ),
        ),

        

        
      ],),
    );
  }
}
