import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sweaterz/bloc/cubit/auth_cubit.dart';
import 'package:sweaterz/bloc/state/auth_state.dart';
import 'package:sweaterz/constants/colors.dart';
import 'package:sweaterz/constants/text_styles.dart';
import 'package:sweaterz/constants/values.dart';
import 'package:sweaterz/screen/registration_completed_screen.dart';
import 'package:sweaterz/widgets/buttons.dart';

class ProfileNameSettingScreen extends StatefulWidget {
  @override
  _ProfileNameSettingScreenState createState() =>
      _ProfileNameSettingScreenState();
}

class _ProfileNameSettingScreenState extends State<ProfileNameSettingScreen> {
  final TextEditingController profileNameController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    double convertHeightRatio = mediaQuery.size.height / kIphoneXHeight;

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is FlaskSignedIn) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => RegistrationCompletedScreen()),
              (route) => false);
        }
      },
      child: Scaffold(
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: double.infinity),
                  SizedBox(height: 90 * convertHeightRatio),
                  Text(
                    'Add profile name',
                    style: kBigTitleTextStyle,
                  ),
                  SizedBox(height: 8 * convertHeightRatio),
                  Text(
                    'Please enter your profile name.\n'
                    'This profile name will be used in our app.',
                    style: kBodyTextStyle1M.copyWith(color: kGreyColor1_767676),
                  ),
                  SizedBox(height: 90 * convertHeightRatio),
                  TextField(
                    style: kBodyTextStyle1M,
                    cursorColor: kSweaterzColor,
                    //keyboardType: TextInputType,
                    textAlign: TextAlign.start,
                    controller: profileNameController,
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter profile name'),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(20),
                      FilteringTextInputFormatter.deny(' '),
                    ],
                    onChanged: (String value) {
                      if (value != '') {
                        setState(() {
                          _isButtonEnabled = true;
                        });
                      } else {
                        setState(() {
                          _isButtonEnabled = false;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 18 * convertHeightRatio),
                  blueColorTextButton(
                      textContent: 'Done',
                      isButtonEnabled: _isButtonEnabled,
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context).signUp(
                            profileName: profileNameController.text.trim());
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
