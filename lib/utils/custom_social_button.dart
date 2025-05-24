import 'package:alpha_login_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
class CustomSocialButton extends StatelessWidget{
  final String lableText;
  final VoidCallback onSubmit;
  final String icon;
  const CustomSocialButton({
     super.key,
     required this.lableText,
     required this.onSubmit,
     required this.icon
  });
  @override
  Widget build(BuildContext context){
      return SizedBox(
        width:250,
      
      child:ElevatedButton(onPressed: onSubmit, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset(icon,width:30),
          SizedBox(width:20),
             Text(lableText,style: TextStyle(color:AppColors.textblackColor,fontSize: 16))
        ],
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.textWhiteColor,
        foregroundColor: AppColors.textblackColor,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
       )
      )
      ),
      );
  }
}