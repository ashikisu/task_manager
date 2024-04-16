import 'package:flutter/material.dart' show BuildContext, Center, Colors, Column, CrossAxisAlignment, EdgeInsets, ElevatedButton, FontWeight, Form, FormState, GlobalKey, Icon, IconButton, Icons, InputDecoration, Key, MainAxisAlignment, MaterialPageRoute, Navigator, Padding, Row, Scaffold, SizedBox, State, StatefulWidget, Text, TextButton, TextEditingController, TextFormField, TextInputType, TextStyle, Theme, Widget;
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/presentation/screens/pin_verification_screen.dart';
import 'package:task_manager/presentation/screens/sign_up_screen.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';

import '../utils/assets_path.dart';
class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController _passwordTEController= TextEditingController();
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
   bool _passwordVisible = true;
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
                    Text('Set Password',
                      style:Theme.of(context).textTheme.titleLarge,
                    ),

                  const SizedBox(
                    height: 4,
                  ),
                  Text("Mnimum length Password 8 character with letter and numbber combination",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),

                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon:IconButton(
                          onPressed: (){
                            setState(() {
                              _passwordVisible=!_passwordVisible;
                            });
                          },


                          icon: Icon(_passwordVisible? Icons.visibility_off:Icons.visibility),
                      )


                    ),

                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                        suffixIcon:IconButton(
                          onPressed: (){
                            setState(() {
                              _passwordVisible=!_passwordVisible;
                            });
                          },


                          icon: Icon(_passwordVisible? Icons.visibility_off:Icons.visibility),
                        )

                    ),

                  ),


                  SizedBox(height: 16,),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){},
                          child: const Text('Confirm',
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          ),
                      )
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
    _passwordTEController.dispose();
    super.dispose();
  }
}

