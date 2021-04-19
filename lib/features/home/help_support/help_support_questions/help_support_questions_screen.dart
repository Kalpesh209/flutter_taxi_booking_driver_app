import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/help_support_questions/help_support_questions_ans_screen.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/my_listtile_widget.dart';
import 'package:flutter_taxi_booking_driver_app/widgets/viit_appbar.dart';


import 'bloc/bloc.dart';

class HelpSupportQuestionsScreen extends StatelessWidget {
  static const String routeName = "helpsupportquestions";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: HelpSupportQuestions(),
      create: (context) => HelpSupportQuestionsBloc(),
    );
  }
}

class HelpSupportQuestions extends StatefulWidget {
  @override
  _HelpSupportQuestionsState createState() => _HelpSupportQuestionsState();
}

class _HelpSupportQuestionsState extends State<HelpSupportQuestions> {
  List<String> title = [
    "Is the driver app available on both Android and iPhone?",
    "Can drivers choose another route from the one suggested by the system?",
    "Can the driver be the dispatcher and dispatch using his Android device?",
    "Can i modify my ride?",
    "How do I change the language in the app?",
    "If there are places with poor signal,will the driver app be updated once the signal comes back?",
    "I have another type of transport company. Can I still use Vitt?",
    "How do I sign up?"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: ViitAppBar(
            onLeadingPressed: () {
              Navigator.of(context).pop();
            },
            leadingWidget: ViitAppBarIconWidget(
              viitAppBarIconType: ViitAppBarIconTypes.BACK,
            ),
            titleWidget: ViitTitleWidget("Help & Support"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: 8,
              right: 8,
            ),
            child: ListView.builder(
              itemCount: title.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyListTitle(
                  title: title[index],
                  myOnTap: () {
                    Navigator.of(context).pushNamed(
                      HelpSupportQuestionAnswerScreen.routeName,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
