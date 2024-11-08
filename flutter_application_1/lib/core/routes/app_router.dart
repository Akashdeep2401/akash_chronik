
import 'package:flutter_application_1/features/auth/presentation/views/sign_in_view.dart';
import 'package:flutter_application_1/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter_application_1/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes:[
    GoRoute(
      path: "/",  
      builder: (context, state) => const SplashView(),
      ),

    GoRoute(
      path: "/onBoarding",  
      builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
      path: "/signUp",  
      builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
      path: "/signIn",  
      builder: (context, state) => const SignInView(),
      ),
  ],
);