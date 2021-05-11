import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:sweaterz/bloc/cubit/profile_cubit.dart';
import 'package:sweaterz/bloc/cubit/sports_cubit.dart';
import 'package:sweaterz/repository/auth_repository.dart';
import 'package:sweaterz/repository/sports_repository.dart';
import 'package:sweaterz/repository/user_repository.dart';
import 'package:sweaterz/screen/home_screen.dart';
import 'package:sweaterz/screen/starting_screen.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'bloc/cubit/auth_cubit.dart';

bool get currentIsDark => true; //Screens.mediaQuery.platformBrightness.isDark;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Phoenix(child: MyApp()));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.transparent,
  ));
  AssetPicker.registerObserve();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
            create: (_) => AuthCubit(repository: AuthRepository())),
        BlocProvider<SportsCubit>(
            create: (_) => SportsCubit(
                sportsRepository: SportsRepository(),
                userRepository: UserRepository())),
        BlocProvider<ProfileCubit>(
            create: (_) => ProfileCubit(repository: UserRepository())),
      ],
      child: MaterialApp(
        // theme: ThemeData(
        //   fontFamily: 'Open_Sans',
        //   textTheme: TextTheme(
        //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        //     bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
        //   ),
        // ),
        //title: 'Sweaterz Loading Screen',
        home: StartingScreen(),
      ),
    );
  }
}
