import 'package:flutter/material.dart' show BuildContext, Center, Colors, Column, CrossAxisAlignment, EdgeInsets, ElevatedButton, FontWeight, Form, FormState, GlobalKey, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MaterialPageRoute, Navigator, Padding, Row, Scaffold, SizedBox, State, StatefulWidget, Text, TextButton, TextEditingController, TextFormField, TextInputType, TextStyle, Theme, Widget;

import 'package:task_manager/presentation/screens/auth/pin_verification_screen.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';

import '../../utils/assets_path.dart';
class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController=TextEditingController();
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackgroundWidget(

          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 150,

                  ),
                    Text('Your Email Adress',
                      style:Theme.of(context).textTheme.titleLarge,
                    ),

                  const SizedBox(
                    height: 4,
                  ),
                  Text("A 6 digit Verfication code will be sent to your email adress",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),

                  ),
                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',

                    ),

                  ),
                  const SizedBox(
                    height: 15,
                  ),


                  SizedBox(height: 16,),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            var push = Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>const PinVerificationScreen())
                            );
                          },
                          child:const Icon(Icons.arrow_circle_right_outlined,),
                      ),
                  ),

                 const SizedBox(
                    height: 48,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const
                      Text(" Have account?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),),
                      TextButton(

                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text('Sign In'),
                      ),
                    ],

                  ),



                ],
              ),
            ),
          ),


      ) ,

    );
  }
  @override
  void dispose(){
    _emailTEController.dispose();
    super.dispose();
  }
}

