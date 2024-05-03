import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screens/auth/email_verification_screen.dart';
import 'package:task_manager/presentation/screens/auth/sign_up_screen.dart';
import 'package:task_manager/presentation/screens/main_bottom_nav_screen.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';

import '../utils/assets_path.dart';
class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  final TextEditingController _emailTEController=TextEditingController();
  final TextEditingController _passwordTEController=TextEditingController();
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
                    Text('Get Started with',
                      style:Theme.of(context).textTheme.titleLarge,
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
                  TextFormField(
                    controller: _passwordTEController,
                    keyboardType:TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(

                      hintText: 'Password',
                      ),
                    ),

                  SizedBox(height: 16,),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const MainBottomNavScreen()), (route) => false);
                          },
                          child:const Icon(Icons.arrow_circle_right_outlined,),
                      ),
                  ),

                 const SizedBox(
                    height: 48,
                  ),

                  Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=>const EmailVerificationScreen()));
                        },
                        child: Text("Forgot Password ?"),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.grey,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,

                        ),

                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const
                      Text("Don't have account?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),),
                      TextButton(

                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=>const SingUpScreen()));
                          },
                          child: const Text('Sign Up'),
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
    _passwordTEController.dispose();
    super.dispose();
  }
}

