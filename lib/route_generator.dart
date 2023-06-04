import 'package:flutter/material.dart';
import 'package:xtreme_trivia/page/quiz_section/leaderboard.dart';
import 'package:xtreme_trivia/page/quiz_section/lobby.dart';
import 'package:xtreme_trivia/page/quiz_section/questions_screen.dart';
import 'package:xtreme_trivia/page/quiz_section/start_quiz.dart';

Route<dynamic> onGenerateRoute(
  RouteSettings settings,
) {
  return MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) {
      switch (settings.name) {
        case StartQuiz.routeName:
          return const StartQuiz();
        case Lobby.routeName:
          return const Lobby();
          case QuestionScreen.routeName:
          return const QuestionScreen();
        case LeaderBoard.routeName:
          return const LeaderBoard();
        default:
          return const Scaffold(
            body: Center(
              child: Text("route does not exist"),
            ),
          );
      }
    },
  );
}

