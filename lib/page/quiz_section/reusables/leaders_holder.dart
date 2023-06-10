
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LeadersHolder extends StatelessWidget {
  final bool isFirst;
  final String text;
  const LeadersHolder({super.key,required this.isFirst,required this.text});

  @override
  Widget build(BuildContext context) {
    bool shouldReduce = Random().nextBool();
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      color: isFirst? const Color(0xff2A3E4C):null,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
          children: [
            const CircleAvatar(radius: 26,backgroundColor: Color(0x51511977),child: Icon(Icons.person_2_rounded,color: Colors.white,)),
            const SizedBox(width: 20,),
            Text(text,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: isFirst? Colors.white:null),),
          ],
    ),
    Row(
      children: [
        Icon(shouldReduce ? Icons.arrow_drop_up_rounded:Icons.arrow_drop_down_rounded,color: shouldReduce ? Colors.green:Colors.red,size: 40),
        Text("${Random().nextInt(6000)+1000}",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: isFirst? Colors.white:null),)
      ],
    )
        ],
      )
    );
  }
}