import 'package:flutter/material.dart'
    show BorderRadius, BuildContext, Center, Colors, Column, CrossAxisAlignment, EdgeInsets, ElevatedButton, FontWeight, Form, FormState, GlobalKey, Icon, Icons, InputDecoration, Key, MainAxisAlignment, MaterialPageRoute, Navigator, Padding, Row, Scaffold, SizedBox, State, StatefulWidget, Text, TextButton, TextEditingController, TextFormField, TextInputType, TextStyle, Theme, Widget;
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/presentation/screens/auth/set_password_screen.dart';
import 'package:task_manager/presentation/screens/auth/sign_up_screen.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
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
                    Text('PIN Verification',
                      style:Theme.of(context).textTheme.titleLarge,
                    ),

                  const SizedBox(
                    height: 4,
                  ),
                  Text("Enter 6 digit Verfication code we have sent to your email adress",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),

                  ),

                  const SizedBox(
                    height: 24,
                  ),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,

                      inactiveFillColor: Colors.transparent,
                      inactiveColor: AppColors.themeColor,
                    ),
                    animationDuration: Duration(milliseconds: 300),

                    enableActiveFill: true,

                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {

                    },
                    appContext:context,

                  ),

                  const SizedBox(height: 16,),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>const SetPasswordScreen()),
                            );

                          },
                          child:const Text("Verify",
                            style: TextStyle(
                              color:Colors.white,
                            ),
                          ),
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

