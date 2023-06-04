import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtreme_trivia/page/quiz_section/reusables/leaders_holder.dart';

class LeaderBoard extends StatefulWidget {
  static const String routeName = '/leaderBoard';
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  List<String> text = [
    "hola amego",
    "hello",
    "buenos dias",
    "noches",
    "gotentak"
  ];

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
            Container(
              width: double.maxFinite,
              height: 500,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50,),
                      const Row(),
                      Text(
                        "LeaderBoard",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.josefinSans(color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w700,
                            fontSize: 25
                            )
                      ),
                      // Expanded(child: ListView(
                      //   children: [
                      //     ...List.generate(text.length, (index) =>LeadersHolder(
                      //       isFirst: index==0?true:false,
                      //         // key: ValueKey(text[index]
                      //         // )
                      //         ))
                      //   ],
                      // )),
                      const SizedBox(height: 20,),
                      Expanded(
                          child: ScrollConfiguration(
                            behavior: const ScrollBehavior().copyWith(overscroll: false),
                            child: ReorderableListView.builder(
                              itemCount: text.length,
                                itemBuilder: (context, index) {
                                  return LeadersHolder(
                                      key: ValueKey(text[index]),
                                      text: text[index],
                                      isFirst: index == 0 ? true : false);
                                },
                                
                                onReorder: (oldIndex, newIndex) {
                                  if (newIndex > oldIndex) {
                                    newIndex -=1;
                                  }
                                  final item = text.removeAt(oldIndex);
                                  text.insert(newIndex, item);
                                  setState(() {
                                    
                                  });
                                }),
                          )),
                      const SizedBox(height: 20,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
