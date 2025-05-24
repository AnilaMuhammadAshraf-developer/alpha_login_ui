import 'package:alpha_login_ui/utils/app_assets.dart';
import 'package:alpha_login_ui/utils/app_colors.dart';
import 'package:alpha_login_ui/utils/app_strings.dart';
import 'package:alpha_login_ui/utils/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          decoration:BoxDecoration(
            gradient:LinearGradient(colors: [AppColors.gradientColor1,AppColors.gradientColor2])
          ),
          child:Padding(
                padding:EdgeInsets.only(top:90),
             child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
              width:270,
              height:450,
              decoration: BoxDecoration(
                color:AppColors.loginBoxColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height:10),
                  Image.asset(AppAssets.logo,width:90,height:90,),
                  Text(AppStrings.welcomeBack,style:TextStyle(fontWeight: FontWeight.bold,fontSize:22)),
                   Text(AppStrings.loginToYourAccount,style:TextStyle(fontWeight: FontWeight.w400,fontSize:12)),
                   SizedBox(height:10),
                   Container(
                   decoration: BoxDecoration(
                   
                   ),
                    width: 250,
                    height:250,
                   
                    child: Form(child:Column(
                       
                children: [
                  Padding(padding: EdgeInsets.only(left:5,right:5),
                  child:Column(
                    children: [
                      TextFormField(
                    
                    decoration: InputDecoration(
                      hintText:AppStrings.hintEmailText,
                       isDense: true,
                       contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      )
                    ),
                  
                  ),
                  SizedBox(height:10),
                  TextFormField(
                    
                    decoration: InputDecoration(
                      hintText:AppStrings.hintPasswordText,
                        isDense: true,
                       contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                      )
                    ),
                  
                  ),
                  SizedBox(height:10),
                  Align(
                    alignment: Alignment.centerRight,
                  child:InkWell(
                    onTap: (){ debugPrint("navigate to forgotpassword screeen ");},
                    child: Text(AppStrings.forgotPassword,style: TextStyle(color:AppColors.btnLoginColor,fontWeight:FontWeight.bold),),
                  ),),
                  SizedBox(height:10),
                  CustomButton(lableText: AppStrings.btnTextLogin,onSubmit: (){debugPrint("login function call here.");},)

                    ],
                  ),
                  ),
                  
                ],
              ))
                   ),
                   
                ],
              ),
             
             ),
            
            ],
          )),
        ),
      ),
    );
  }
}
