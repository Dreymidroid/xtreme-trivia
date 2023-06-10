import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Function() onTap;
  final String text;
  final TextStyle textStyle;
  const CustomBtn({super.key,required this.onTap,required this.text, this.textStyle = const TextStyle() });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: const EdgeInsets.all(15),
        decoration: const ShapeDecoration(
          color: Color(0xff5B357B),
          shape: StadiumBorder()),
          child: Text(text,style: textStyle.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.white
          ),),
      )
      );
  }
}