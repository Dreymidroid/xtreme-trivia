import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionHolder extends StatelessWidget {
  final bool isCorrectOption;
  const OptionHolder({super.key,required this.isCorrectOption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 15),
      decoration: BoxDecoration(
        // color: isCorrectOption? Color.fromARGB(20, 76, 175, 79) :const Color.fromARGB(22, 244, 67, 54),
        border: Border.all(width: 1,color: Colors.grey),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/diamond.svg"),
          const SizedBox(width: 20,),
          const Text("Iphone",style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 58, 58, 58),
            fontSize: 20
          ),)
        ],
      ),
    );
  }
}