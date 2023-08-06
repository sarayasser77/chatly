import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/core/constant/customcolors.dart';
import 'package:untitled1/core/shared/customtextfield.dart';
class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: ListView(
               children: [
                 Lottie.asset("images/register.json"),
                 CustomTextField(hintText: "email", textonvalidation: "Enter your email",
                     controller: emailController, isexisted: false,),
                 CustomTextField(
                     checkPass: true
                     ,hintText: "password", textonvalidation: "Enter your password", controller: passwordController, isexisted: true),
                 SizedBox(height: 50.h,),
                 ActionChip(
                     backgroundColor: purpleColore,
                     disabledColor: purpleColore,
                     label:const  Text("            Register            ",style: TextStyle(color: Colors.black),),
onPressed: (){
                       if(_formKey.currentState!.validate()==true){
                       }
},
                 )
               ],
          ),
        ),
    );
  }
}
