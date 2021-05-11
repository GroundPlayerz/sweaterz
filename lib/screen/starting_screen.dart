import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/auth_cubit.dart';
import 'package:sweaterz/bloc/state/auth_state.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/screen/home_screen.dart';
import 'package:sweaterz/screen/profile_name_setting_screen.dart';
import 'package:sweaterz/screen/sign_in_screen.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        print(state);
        if (state is FirebaseSignedIn) {
          BlocProvider.of<AuthCubit>(context).signInFlask();
        } else if (state is FlaskSignedIn) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (route) => false);
        } else if (state is FlaskSignInFailed) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfileNameSettingScreen()),
              (route) => false);
        } else if (state is SignedOut) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
              (route) => false);
        }
      },
      child: Builder(builder: (context) {
        BlocProvider.of<AuthCubit>(context).checkIsFirebaseSignedIn();
        var mediaQuery = MediaQuery.of(context);
        double convertHeightRatio = mediaQuery.size.height / kIphoneXHeight;

        return Scaffold(
          body: Center(
            child: Column(children: [
              SizedBox(
                height: 329 * convertHeightRatio,
              ),
              Container(
                height: 34.0,
                child: Image(image: AssetImage('images/logo_big@3x.png')),
              ),
              SizedBox(
                height: 375.8 * convertHeightRatio,
              ),
              Container(
                height: 20.0,
                child: Image(
                  image: AssetImage('images/gpz_logo@3x.png'),
                ),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
