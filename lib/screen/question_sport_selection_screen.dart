import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/sports_cubit.dart';
import 'package:sweaterz/bloc/state/sports_state.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/model/sport/sport.dart';

class QuestionSportSelectionScreen extends StatefulWidget {
  final Sport? selectedSport;

  QuestionSportSelectionScreen({this.selectedSport});

  @override
  _QuestionSportSelectionScreenState createState() =>
      _QuestionSportSelectionScreenState();
}

class _QuestionSportSelectionScreenState
    extends State<QuestionSportSelectionScreen> {
  late Sport? _selectedSport;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedSport = widget.selectedSport;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget sportButton(BuildContext context,
      {required bool isSelected, required Sport sport}) {
    Color defaultColor = Color(0xffE4E4E4);
    Color activatedColor = Colors.grey;
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedSport = sport;
        });
      },
      style: TextButton.styleFrom(
        textStyle: kBodyTextStyle1M.copyWith(),
        primary: Colors.black,
        backgroundColor: isSelected ? activatedColor : defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kIphoneXHeight)),
        ),
      ),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          child: Text(sport.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kWhiteColor, //change your color here
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context, _selectedSport);
              },
              child: Text('Done'))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(children: [
            BlocBuilder<SportsCubit, SportsState>(builder: (context, state) {
              if (state is Empty) {
                BlocProvider.of<SportsCubit>(context)
                    .getSportsWithFollowingSports();
              } else if (state is Loading) {
                return CircularProgressIndicator();
              } else if (state is Loaded) {
                List<Widget> sportButtonList = [];
                for (Sport sport in state.sportsList) {
                  bool _isSelected = false;
                  if (_selectedSport?.id == sport.id) {
                    _isSelected = true;
                  }
                  sportButtonList.add(sportButton(context,
                      isSelected: _isSelected, sport: sport));
                }

                return Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: sportButtonList,
                );
              } else if (state is Error) {
                Text(state.message);
              }
              return Container();
            }),
            TextButton(
                onPressed: () {},
                child: Text('Isn\'t there any sport you want?')),
          ]),
        ),
      ),
    );
  }
}
