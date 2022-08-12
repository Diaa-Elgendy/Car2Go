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
      appBar: AppBar(),
     body: Center(
       child: SingleChildScrollView(
         padding: const EdgeInsets.all(AppPadding.screenPadding),
         child: Column(
           children: [
             Space(),
             Image.asset(
               ImageAssets.logo,
               height: 120,
             ),
             Space(height: 30,),
             CustomTextField(controller: userNameController,
                 textFieldType: TextFieldType.text,
                 text: "Userame",
                 prefix: Icons.account_circle_outlined,
             ),
             Space(),
             CustomTextField(controller: phoneController,
               textFieldType: TextFieldType.text,
               text: "Phone Number",
               prefix: Icons.phone,
             ),
             Space(),
             CustomTextField(controller: emailController,
               textFieldType: TextFieldType.text,
               text: "Email",
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
             Space(),
             CustomTextField(
               controller: passwordController,
               textFieldType: TextFieldType.text,
               text: 'Confirm Password',
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

           ],
         ),
       ),
     ),
    );
  }
}
