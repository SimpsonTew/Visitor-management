

//import 'dart:html';

//import 'dart:js';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/routes/router.gr.dart';
import 'package:quiz_app/service/api.dart';
import 'package:quiz_app/ui/Screens/Auth/Controllers/users.dart';

import '../../Category/category_screen.dart';
import '../../CommonControllers/profile_controllers.dart';

class AuthController extends GetxController{
  ProfileController profileController = Get.find();
  Rx<TextEditingController> loginEmailController = TextEditingController().obs;
  Rx<TextEditingController> loginPasswordController = TextEditingController().obs;
  List<Users> allusers = [];
  RxBool obsecure = true.obs;
  RxBool rememberMe = false.obs;
  RxString error = "".obs;
  RxInt signUpIndex = 0.obs;
  late Box box1;
   
 @override
 void onInit() async {
   super.onInit();
   createOpenBox();
   
   //allusers = await fetchAllUsers();
   }
  // @override
  // void onInit(){

  // } 
   void createOpenBox()async{
    print("Box not initialized ");
    box1 = await Hive.openBox('logindata');
    print("Box is initialized ");
    print(box1.get('email'));
    getdata();
  }
    void getdata()async{
    if(box1.get('email')!=null && box1.get('pass')!=null){
      //profileController.userInfo.value  = await fetchUser(box1.get('email').toString());
      //   email.text = box1.get('email');
    //   isChecked = true;
    //   setState(() {
    //   });
    // }
    // if(box1.get('pass')!=null){
    //   pass.text = box1.get('pass');
    //   isChecked = true;
    //   setState(() {
    //   });
    print("Box already opned ");
    loginEmailController.value.text= box1.get('email');
    loginPasswordController.value.text = box1.get('pass');
    }
  }



  Future<void> signUp(Users user ,
                 ProfileController controller,
                 GlobalKey<FormState> formKey, 
                 BuildContext context)
     async {
        
     print(signUpIndex.value);
      if(signUpIndex.value==0){                   
      if(controller.emailFieldKey.value.currentState!.validate()){
        
        signUpIndex.value++;
        print(signUpIndex.value);
      
      }
    }else if(signUpIndex.value==1){
      if(controller.passFieldKey.value.currentState!.validate()&&
          controller.confirmFieldKey.value.currentState!.validate()){        
         signUpIndex.value++;      
      }

    } else if(signUpIndex.value==2){
      print(signUpIndex.value);
      if(controller.firstNameFieldKey.value.currentState!.validate()&&
         controller.lastNameFieldKey.value.currentState!.validate()){
            formKey.currentState!.save();
           user.gender=controller.genderIndex.value?"Male":"Female";
           var  id = Random();
             user.id=id.nextInt(1000);
            await createUser(user);           
            context.router.pushNamed("/");
                                }
                              }
                            }
    void authenticateUser({required BuildContext   context,
                          required GlobalKey<FormFieldState> emailKey,
                          required GlobalKey<FormFieldState> passKey,
                          required TextEditingController email,
                          required TextEditingController password}    ) 
        async {
                      
              var pass = password.text.trim();
              var emails = email.text.trim().toLowerCase();

              

              if(emailKey.currentState!.validate() && passKey.currentState!.validate()) {
                profileController.userInfo.value = await fetchUser(emails);
                if (profileController.userInfo.value != null &&
                    profileController.userInfo.value!.password == pass) {
                      if(rememberMe.value){
                        print("remmeber me");
                        box1.put('email', emails);
                        box1.put('pass', pass);
                              }
                          }
                          print(box1.get('email').toString());
                          print(box1.get('pass').toString());
                  profileController.scores =
                      await fetchUserScores(profileController.userInfo.value!.id);
                  error.value="";
                  context.router.pushNamed('/category');
                } else {                
                  error.value="Email address or Password is incorrect";                
                }
              }
          }

   
