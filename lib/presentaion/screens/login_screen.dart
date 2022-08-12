import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/Signup_screen.dart';
import 'package:car2go/presentaion/screens/navigation_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_button.dart';
import 'package:car2go/presentaion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  IconData passwordIcon = Icons.visibility;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppPadding.screenPadding),
            child: Column(
              children: [
                Text('Welcome back, Login \nto Continue !',
                    style: getMediumStyle(fontSize: FontSize.f20),
                    textAlign: TextAlign.center),
                Space(),
                Image.asset(
                  ImageAssets.logo,
                  height: 100,
                ),
                Space(),
                CustomTextField(
                  controller: emailController,
                  textFieldType: TextFieldType.text,
                  text: 'Email',
                  prefix: Icons.email_outlined,
                ),
                Space(),
                CustomTextField(
                  controller: passwordController,
                  textFieldType: TextFieldType.text,
                  text: 'Password',
                  isPassword: true,
                  prefix: Icons.lock_outline,
                  suffix: passwordIcon,
                  suffixPressed: null,
                ),
                Space(
                  height: 5,
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: ColorManager.primary,
                        value: rememberMe,
                        splashRadius: 25,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        }),
                    Text(
                      'Remember Me',
                      style: getRegularStyle(),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password?',
                        style: getRegularStyle(),
                      ),
                    ),
                  ],
                ),
                Space(
                  height: 5,
                ),
                CustomButton(
                  text: 'Login',
                  function: () {
                    navigateAndFinish(context, const NavigationScreen());
                  },
                ),
                Space(),
                CustomButton(
                  text: 'Continue without login',
                  function: () {
                    navigateAndFinish(context, const NavigationScreen());
                  },
                ),
                Space(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: ColorManager.primaryLight,
                        thickness: 0.5,
                      ),
                    ),
                    Text(
                      '    You can connect with    ',
                      style: getRegularStyle(
                          color: ColorManager.textColorLight),
                    ),
                    const Expanded(
                      child: Divider(
                        color: ColorManager.primaryLight,
                        thickness: 0.5,
                      ),
                    ),
                  ],
                ),
                Space(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //todo: add colored logos
                    IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.facebook, size: 30,)),
                    IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.apple, size: 30,)),
                    IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.google, size: 30,))
                  ],
                ),
                Space(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account', style: getMediumStyle(),),
                    TextButton(onPressed: () {
                      navigateTo(context: context, widget: const SignupScreen());
                    },
                    child: Text('  Sign Up here', style: getMediumStyle(color: ColorManager.primary),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
