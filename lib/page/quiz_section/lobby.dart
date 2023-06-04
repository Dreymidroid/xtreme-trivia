import 'package:flutter/material.dart';
import 'package:xtreme_trivia/model/user_model.dart';
import 'package:xtreme_trivia/model/user_quiz_model.dart';
import 'package:xtreme_trivia/page/quiz_section/questions_screen.dart';
import 'package:xtreme_trivia/page/quiz_section/reusables/user_holder.dart';
import 'package:xtreme_trivia/shared/custom_btn.dart';

class Lobby extends StatelessWidget {
  const Lobby({super.key});

  static const routeName = '/lobby';

  @override
  Widget build(BuildContext context) {
    List<UserQuizModel> dummyUsers = [
      UserQuizModel(user: const UserModel(id: "1", name: "Tamynator")),
      UserQuizModel(user: const UserModel(id: "2", name: "Max")),
      UserQuizModel(user: const UserModel(id: "3", name: "Damnation")),
    ];
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff8329B2),
                Color(0xff7825B0),
                Color(0xff6C21AD),
              ],
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.7,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset("assets/images/lines.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Image.asset(
                      "assets/images/lines_bottom.png",
                      scale: 0.7,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(2.0, 15, 8, 8),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 18,
                              )),
                        ),
                      ),
                      Text(
                        "Waiting for players",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:24.0),
                            child: ListView.separated(
                              separatorBuilder: (context, index) => const SizedBox(height: 15,),
                              itemCount: dummyUsers.length,
                              itemBuilder: (context,index) => UserHolder(model: dummyUsers[index].user)),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 25),
                        child: CustomBtn(onTap:()=> Navigator.pushNamed(context, QuestionScreen.routeName), text: "Start Quiz"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
