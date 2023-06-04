import 'package:flutter/material.dart';
import 'package:xtreme_trivia/model/user_model.dart';

class UserHolder extends StatelessWidget {
  final UserModel model;
  const UserHolder({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 26,backgroundColor: Color(0x81511977),child: Icon(Icons.person_2_rounded,color: Colors.white,),),
        const SizedBox(width: 20,),
        Text(model.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
      ],
    );
  }
}