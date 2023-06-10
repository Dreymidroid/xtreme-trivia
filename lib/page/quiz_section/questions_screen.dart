import 'package:flutter/material.dart';
import 'package:xtreme_trivia/page/quiz_section/leaderboard.dart';
import 'package:xtreme_trivia/page/quiz_section/reusables/option_holder.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  static const String routeName = '/questionScreen';

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const LinearProgressIndicator(
                      minHeight: 6,
                      value: 1,
                      color: Color(0xffFF4040),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 20.0, bottom: 15, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.question_answer_rounded,
                                color: Color.fromARGB(255, 109, 109, 109),
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "1/10",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 109, 109, 109),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.stacked_bar_chart_rounded,
                                color: Color.fromARGB(255, 109, 109, 109),
                                size: 17,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "4,000",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 109, 109, 109),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "What was the first product launched by Apple ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: List.generate(
                            4,
                            (index) => InkWell(
                                onTap: index == 1
                                    ? () {
                                        Navigator.pushNamed(context, LeaderBoard.routeName);
                                      }
                                    : () {},
                                child: OptionHolder(
                                  isCorrectOption: index == 2 ? true : false,
                                ))),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
