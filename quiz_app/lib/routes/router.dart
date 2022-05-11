import 'package:auto_route/annotations.dart';
import 'package:quiz_app/screens/rule_and%20terms.dart';
import '../screens/Category/back_end_choices.dart';
import '../screens/Category/category_screen.dart';
import '../screens/Category/choose_type_screen.dart';
import '../screens/Category/cloud_choices.dart';
import '../screens/Login/login_screen.dart';
import '../screens/Login/signUp_password.dart';
import '../screens/Login/signup_email.dart';
import '../screens/Login/signup_name.dart';
import '../screens/Login/signup_onepage.dart';
import '../screens/Login/splash_screen.dart';
import '../screens/Profile/edit_profile_screen.dart';
import '../screens/Profile/my_scores_screen.dart';
import '../screens/Profile/profile_screen.dart';
import '../screens/Category/front_end_choices.dart';
import '../screens/Score/final_practice_score.dart';
import '../screens/Score/review_page.dart';
import '../screens/question_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splash, initial: true),
    AutoRoute(path: '/login', page: LoginPage),
    AutoRoute(path: '/terms', page: TermsConditions),
   // AutoRoute(path: '/signup_email', page: SignupEmail),
    //AutoRoute(path: '/signup_password', page: SignupPassword),
    //AutoRoute(path: '/signup_name', page: SignupName),
    AutoRoute(path: '/signup', page:OneSignupPage),
    AutoRoute(path: '/category', page: CategoryPage),
    AutoRoute(path: '/frontend', page: FrontEndChoices),
    AutoRoute(path: '/backend', page: BackendChoices),
    AutoRoute(path: '/cloud', page: CloudChoices),
    AutoRoute(path: '/choose-type', page: ChooseType),
    AutoRoute(path: '/questions', page: QuestionScreen),
    AutoRoute(path: '/finalScore', page: FinalScore),
    AutoRoute(path: '/review_screen', page: ReviewScreen),
    AutoRoute(path: '/profile', page: ProfileScreen),
    AutoRoute(path: '/edit_profile', page: EditProfileScreen),
    AutoRoute(path: '/my_scores', page: MyScoresScreen),
  ],
)
class $AppRouter {}
