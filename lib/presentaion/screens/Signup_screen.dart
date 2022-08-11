import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/string_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/theme_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/home/home_screen.dart';
import 'package:car2go/presentaion/screens/login_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  IconData passwordIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Center(
         child: SingleChildScrollView(
           padding: EdgeInsets.all(AppPadding.screenPadding),
           child: Column(
             children: [
               Text("Welcome, Singup \n to Continue !" ,
                 style: getMediumStyle(fontSize: FontSize.f20),
                 textAlign: TextAlign.center,
               ),
               Space(),
               Image.asset(
                 ImageAssets.logo,
                 height: 100,
               ),
               Space(),
               CustomTextField(controller: userNameController,
                   textFieldType: TextFieldType.text,
                   text: "user name",
                   prefix: Icons.account_circle_outlined,
               ),
               Space(),
               CustomTextField(controller: phoneController,
                 textFieldType: TextFieldType.text,
                 text: "phone number",
                 prefix: Icons.phone,
               ),
               Space(),
               CustomTextField(controller: emailController,
                 textFieldType: TextFieldType.text,
                 text: "email",
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
                 height: 30,
               ),
               CustomButton(
                 text: 'Sign up',
                 function: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => HomeScreen()),
                     );
                 },
               ),
               Space(
                 height: 20,
               ),
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
                         color: ColorManager.textColorLight,
                         fontSize: FontSize.f12),
                   ),
                   const Expanded(
                     child: Divider(
                       color: ColorManager.primaryLight,
                       thickness: 0.5,
                     ),
                   ),
                 ],
               ),
               Space(
                 height: 5,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.facebook)),
                   IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.apple)),
                   IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.google))
                 ],
               ),
               Space(
                 height: 6,
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('You already have an account!', style: getMediumStyle(fontSize: FontSize.f14),),
                   new GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context ,
                         MaterialPageRoute(builder: (context)=>LoginScreen()),
                       );
                     },
                     child:Text('  Login here', style: getMediumStyle(fontSize: FontSize.f14, color: ColorManager.primary),),
                   )
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
