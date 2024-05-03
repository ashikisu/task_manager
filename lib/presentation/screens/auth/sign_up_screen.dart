import 'package:flutter/material.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';
class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final TextEditingController _emailTEController= TextEditingController();
  final TextEditingController _firstNameTEController= TextEditingController();
  final TextEditingController _lastNameTEController= TextEditingController();
  final TextEditingController _mobileTEController= TextEditingController();
  final TextEditingController _passwordTEController= TextEditingController();
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 84,
                      ),
                      Text("Join With Us",
                      style: Theme.of(context).textTheme.titleLarge,
                      ),
              
                      const SizedBox(height: 8,),
                      TextFormField(

                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: 'First Name'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: 'Last Name'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            hintText: 'Mobile'
                        ),
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                            hintText: 'Password'
                        ),
                      ),
              
                      SizedBox(height:8),
              
              
                      SizedBox(
                        width: double.infinity,
              
                        child: ElevatedButton(
              
                          onPressed:(){} ,
              
                          child: const Icon(Icons.arrow_circle_right_outlined),
                        ),
              
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text('Have any Account',
                           style: TextStyle(
                             color: Colors.black54,
                             fontSize: 16,
                           ),
                         ),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          },
                              child: Text('Sing In'),
                          )
              
                        ],
                      ),
              
                    ],
              ),
            ),
          ),
        ),
      ),

    );
  }
  void dispose(){
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
