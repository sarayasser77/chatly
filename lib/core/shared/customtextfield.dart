import 'package:flutter/material.dart';
import 'package:untitled1/core/constant/customcolors.dart';
class CustomTextField extends StatefulWidget {
  String hintText;
  String textonvalidation;
  bool ? checkPass ;
  TextEditingController? controller;
  bool isexisted=false;

  CustomTextField({required this.hintText,required this.textonvalidation,required this.controller,
    this.checkPass=false,required this.isexisted});
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isClicked=false;
  bool isobsecure=true;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: widget.controller,
          obscureText: isobsecure,
          decoration: InputDecoration(

            suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    isClicked=!isClicked;
                    isobsecure=!isobsecure;
                  });
                }, icon: widget.isexisted==true?isClicked==false? Icon(Icons.remove_red_eye_outlined,color: greenColor,):const Icon(Icons.remove_red_eye):Icon(Icons.email,color: greenColor,)
            ),
            errorStyle: const TextStyle(color: Colors.red),
            errorBorder: OutlineInputBorder(
                borderSide:BorderSide(color: pinkColor) ,
                borderRadius: BorderRadius.circular(20)
            ),
            fillColor:pinkColor,
            labelText: widget.hintText,
            labelStyle:Theme.of(context).textTheme.labelMedium,
            enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: pinkColor),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:pinkColor),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          validator: (String? value) {
            if( widget.checkPass== true){
              if (value == null || value.isEmpty) {
                return 'please enter ${widget.textonvalidation}';
              }
              else if(value.length < 6 ) {
                return 'password is short';
              }
            }else{

              if (value == null || value.isEmpty) {
                return 'please enter ${widget.textonvalidation}';
              }
              else {
                return null;
              }
            }
          }
      ),
    );
  }
}