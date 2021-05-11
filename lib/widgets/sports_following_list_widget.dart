import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/sports_cubit.dart';
import 'package:sweaterz/bloc/state/sports_state.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/model/sport/sport.dart';

class SportsFollowingListWidget extends StatefulWidget {
  @override
  _SportsFollowingListWidgetState createState() =>
      _SportsFollowingListWidgetState();
}

class _SportsFollowingListWidgetState extends State<SportsFollowingListWidget> {
  Widget sportButton(BuildContext context,
      {required bool isActivated, required Sport sport}) {
    Color defaultColor = Color(0xffE4E4E4);
    Color activatedColor = Colors.grey;
    return TextButton(
      onPressed: () {
        if (isActivated) {
          BlocProvider.of<SportsCubit>(context).unfollowSport(sport: sport);
        } else {
          BlocProvider.of<SportsCubit>(context).followSport(sport: sport);
        }
      },
      style: TextButton.styleFrom(
        textStyle: kBodyTextStyle1M.copyWith(),
        primary: Colors.black,
        backgroundColor: isActivated ? activatedColor : defaultColor,
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
    return BlocBuilder<SportsCubit, SportsState>(builder: (context, state) {
      if (state is Empty) {
        return Container();
      } else if (state is Loading) {
        return Text('loading');
      } else if (state is Error) {
        return Text(state.message);
      } else if (state is Loaded) {
        final List<Sport> sportsList = state.sportsList;
        final List<Sport> userFollowingSportsList =
            state.userFollowingSportsList;
        List<Widget> sportsButtonList = [];
        for (Sport sport in sportsList) {
          bool _isActivated = false;
          if (userFollowingSportsList.length != 0) {
            for (Sport followingSport in userFollowingSportsList) {
              if (sport == followingSport) {
                _isActivated = true;
              }
            }
          }
          sportsButtonList.add(
              sportButton(context, isActivated: _isActivated, sport: sport));
        }
        return Wrap(
          spacing: 5.0,
          runSpacing: 1.0,
          children: sportsButtonList,
        );
      }
      return Container();
    });
  }
}
