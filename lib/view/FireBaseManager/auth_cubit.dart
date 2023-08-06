import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled1/view/FireBaseManager/authStates.dart';

class AuthCubit extends Cubit<AuthStates>{
  AuthCubit():super(InitialStates());

  //register
void register({required String email,required String password}) async{
UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
if(userCredential.user?.uid!=null){
  debugPrint("created successfully");
  emit(RegisterSucsessState());
}else{
  emit(RegisterFailureState());
}
}

}