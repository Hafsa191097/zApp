import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:z_app/constents/const.dart';
import 'package:z_app/views/forgot_password.dart';
import 'package:z_app/views/minimum_investment.dart';
import 'package:z_app/views/onboard.dart';
import 'package:z_app/views/setup_profile.dart';
import 'package:z_app/views/signin_screen.dart';
import 'package:z_app/views/signup_page.dart';
import 'package:z_app/views/specialized_areas.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Z APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary_color),
        applyElevationOverlayColor: true,
        
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/min_investment',
      routes: {
        onboard.route :(context) => const onboard(),
        SignUp.route :(context) => const SignUp(),
        SignIn.route :(context) => const SignIn(),
        ForgotPassword.route :(context) => const ForgotPassword(),
        SetupProfile.route:(context) => const SetupProfile(),
        Specialized_Areas.route:(context) => const Specialized_Areas(),
        Minimum_Investment.route:(context) => const Minimum_Investment()
      },
    );
  }
}

