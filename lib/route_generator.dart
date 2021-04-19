import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/contact_us/contact_us_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/feedback/feedback_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/help_support_questions/help_support_questions_ans_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/help_support/help_support_questions/help_support_questions_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/home_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/refer_driver/how_work_details_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/refer_driver/your_referral_driver_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/app_setting/app_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/emergency_contacts/emergency_contact_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/my_docunment/my_docunment_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/my_vehicles/my_vehicles_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/navigaion_setting/navigation_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/home/setting/privacy_setting/privacy_setting_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/language/language_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/login/login_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/login_faceid/login_faceid_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/reset_password/forgot/forgot_password_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/reset_password/otp/otp_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/reset_password/reset/reset_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/loginsignup/signup/signup_screen.dart';
import 'package:flutter_taxi_booking_driver_app/features/onboard/onboard_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case LanguageScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => LanguageScreen(),
        );

      case OnBoardScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => OnBoardScreen(),
        );

      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

      case SignupScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );

      case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
        );

      case OTPScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => OTPScreen(),
        );

      case ResetPassScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ResetPassScreen(),
        );

      case LoginFaceIDScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => LoginFaceIDScreen(),
        );

      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );

      case HelpSupportQuestionsScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => HelpSupportQuestionsScreen(),
        );

      case HelpSupportQuestionAnswerScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => HelpSupportQuestionAnswerScreen(),
        );

      case ContactUsScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ContactUsScreen(),
        );

      case FeedBackScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => FeedBackScreen(),
        );
      case MyVehiclesScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => MyVehiclesScreen(),
        );
      case MyDocunmentScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => MyDocunmentScreen(),
        );
      case NavigationSettingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => NavigationSettingScreen(),
        );
      case PrivacySettingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => PrivacySettingScreen(),
        );
      case AppSettingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => AppSettingScreen(),
        );

      case EmergencyContactScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => EmergencyContactScreen(),
        );
      case HowWorkDetailsScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => HowWorkDetailsScreen(),
        );
      case YourReferralDriverScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => YourReferralDriverScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Route not found'),
          ),
          body: Center(
            child: Text('Please check you app route.'),
          ),
        ),
      );
    });
  }
}
