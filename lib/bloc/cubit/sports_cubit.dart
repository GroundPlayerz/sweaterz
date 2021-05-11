import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/state/sports_state.dart';
import 'package:sweaterz/model/sport/sport.dart';
import 'package:sweaterz/repository/sports_repository.dart';
import 'package:sweaterz/repository/user_repository.dart';

class SportsCubit extends Cubit<SportsState> {
  final SportsRepository sportsRepository;
  final UserRepository userRepository;

  SportsCubit({required this.sportsRepository, required this.userRepository})
      : super(Empty());

  getSportsWithFollowingSports() async {
    try {
      emit(Loading());

      final allSportsResp = await this.sportsRepository.getAllSports();
      final sportsList =
          allSportsResp.data.map<Sport>((e) => Sport.fromJson(e)).toList();

      print(sportsList);

      final userFollowingSportsResp =
          await this.userRepository.getUserFollowingSports();
      List<Sport> userFollowingSportsList = userFollowingSportsResp.data
          .map<Sport>((e) => Sport.fromJson(e))
          .toList();

      emit(Loaded(
          sportsList: sportsList,
          userFollowingSportsList: userFollowingSportsList));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  followSport({required Sport sport}) async {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);
        final List<Sport> sportsList = [...parsedState.sportsList];

        final List<Sport> prevUserFollowingSportsList = [
          ...parsedState.userFollowingSportsList
        ];
        final List<Sport> newUserFollowingSportsList = [
          ...prevUserFollowingSportsList,
          sport,
        ];

        print(newUserFollowingSportsList);

        emit(Loaded(
            userFollowingSportsList: newUserFollowingSportsList,
            sportsList: sportsList));

        await this.userRepository.followSport(sport: sport);

        final userFollowingSportsResp =
            await this.userRepository.getUserFollowingSports();
        List<Sport> userFollowingSportsList = userFollowingSportsResp.data
            .map<Sport>((e) => Sport.fromJson(e))
            .toList();
        emit(Loaded(
            userFollowingSportsList: userFollowingSportsList,
            sportsList: sportsList));
        print(userFollowingSportsList);
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  unfollowSport({required Sport sport}) async {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);
        final List<Sport> sportsList = [...parsedState.sportsList];

        final List<Sport> prevUserFollowingSportsList = [
          ...parsedState.userFollowingSportsList
        ];
        prevUserFollowingSportsList
            .removeWhere((element) => element.id == sport.id);
        print(prevUserFollowingSportsList);
        final List<Sport> newUserFollowingSportsList = [
          ...prevUserFollowingSportsList
        ];

        emit(Loaded(
            userFollowingSportsList: newUserFollowingSportsList,
            sportsList: sportsList));

        await this.userRepository.unfollowSport(sport: sport);

        final userFollowingSportsResp =
            await this.userRepository.getUserFollowingSports();
        List<Sport> userFollowingSportsList = userFollowingSportsResp.data
            .map<Sport>((e) => Sport.fromJson(e))
            .toList();
        emit(Loaded(
            userFollowingSportsList: userFollowingSportsList,
            sportsList: sportsList));
        print(userFollowingSportsList);
      }
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
