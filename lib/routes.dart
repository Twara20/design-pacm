import 'package:design_pacm/binding/bindings.dart';
import 'package:design_pacm/binding/splash_binding.dart';
import 'package:design_pacm/controller/controller.dart';
import 'package:design_pacm/screens/check_your_email_screen.dart';
import 'package:design_pacm/screens/login_screen.dart';
import 'package:design_pacm/screens/register_screen.dart';
import 'package:design_pacm/screens/screens.dart';
import 'package:design_pacm/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:design_pacm/screens/approval_screen.dart';
import 'package:design_pacm/screens/account_setting_screen.dart';

final List<GetPage> appPages = [

  GetPage(
    name: SplashScreen.PageId,
    page: ()=> SplashScreen(),
    binding: SplashBinding(),
  ),

  GetPage(
    name: LoginScreen.pageId,
    page: ()=> LoginScreen(),
    binding: LoginBinding(),
  ),

  GetPage(
    name: RegisterScreen.pageId,
    page: ()=> RegisterScreen(),
    binding: RegisterBinding(),
  ),

  GetPage(
    name: RegistrationForm.pageId,
    page: ()=> RegistrationForm(),
    binding: RegistrationFormBinding(),
  ),

  GetPage(
    name: ApprovalScreen.pageId,
    page: ()=> ApprovalScreen(),
    binding: ApprovalBinding(),
  ),

  GetPage(
    name: ForgetPasswordScreen.pageId,
    page: ()=> ForgetPasswordScreen(),
    binding:  ForgetPasswordBinding(),
  ),
  GetPage(
    name: HomeScreen.pageId,
    page: ()=> HomeScreen(),
    binding:  HomeBinding(),
  ),


  GetPage(
    name: SignInScreen.pageId,
    page: ()=> SignInScreen(),
    binding:  SignInBinding(),
  ),

  GetPage(
    name: SignInGuest.pageId,
    page: ()=> SignInGuest(),
    binding:  SignInGuestBinding(),
  ),

  GetPage(
    name: CheckEmail.pageId,
    page: ()=> CheckEmail(),
    binding:  CheckEmailBinding(),
  ),


  GetPage(
    name: CreateNewPassword.pageId,
    page: ()=> CreateNewPassword(),
    binding:  CreateNewPassowordBinding(),
  ),

  GetPage(
    name: AccountSetting.pageId,
    page: ()=> AccountSetting(),
    binding: AccountSettingBinding(),
  ),

  GetPage(
    name: EditNameScreen.pageId,
    page: ()=> EditNameScreen(),
    binding: EditNameScreenBinding(),
  ),



];