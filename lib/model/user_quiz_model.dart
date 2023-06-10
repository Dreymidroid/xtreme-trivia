import 'package:xtreme_trivia/model/user_model.dart';

class UserQuizModel{
  final UserModel user;
  late int score;
  late bool isCreator;

  UserQuizModel({required this.user, this.score = 0, this.isCreator = false});
}