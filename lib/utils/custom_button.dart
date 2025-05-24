import 'package:alpha_login_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget{
  final String lableText;
  final VoidCallback onSubmit;
  const CustomButton({
     super.key,
     required this.lableText,
     required this.onSubmit
  });
  @override
  Widget build(BuildContext context){
      return SizedBox(
        width:250,
      
      child:ElevatedButton(onPressed: onSubmit, child: Text(lableText,style: TextStyle(color:AppColors.textWhiteColor),),style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.btnLoginColor,
        foregroundColor: AppColors.textWhiteColor,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
       )
      )),);
  }
}