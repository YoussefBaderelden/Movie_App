import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../main.dart';
import '../../theme/appColor.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const SizedBox(height: 50),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset('assets/login/login.png'),
    ],
    ),
      const SizedBox(height: 20),
      TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[800],
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
      ),
      labelText: AppLocalizations.of(context)!.email,
      labelStyle: const TextStyle(color: Colors.white70,
      fontSize: 14),
      hintText: AppLocalizations.of(context)!.enterValidEmail,
          hintStyle: const TextStyle(color: Colors.white54,
              fontSize: 14),
          prefixIcon : Padding(
            padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/login/iconmail.png', width: 24, height: 24),
          )
      ),
      ),
      const SizedBox(height: 20),
      TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                }
                );
              },
            ),
            filled: true,
            fillColor: Colors.grey[800],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
            labelText: AppLocalizations.of(context)!.password,
            labelStyle: const TextStyle(color: Colors.white70),
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: Colors.white54),
            prefixIcon : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/login/iconpassword.png'),
            )
        ),
      ),
    Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    TextButton(
    child: Text(AppLocalizations.of(context)!.forgetYourPassword,
      style: const TextStyle(
        color: AppColor.primary
      ),
    ),
    onPressed: (){
      Navigator.pushNamed(context, '/forgetPassword');
    },
    ),
    ],
    ),
    ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: AppColor.primary,
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text(
          AppLocalizations.of(context)!.logIn,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  AppLocalizations.of(context)!.dontHaveAccount,
                  style: const TextStyle(
                    color: Colors.white
                  ),
                )
              ),
              TextButton(
                child: (
                 Text(AppLocalizations.of(context)!.createAccount,
                style: const TextStyle(
                  color: AppColor.primary
                ),)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ]
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              height: 2.0,
              width: MediaQuery.of(context).size.width / 5,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.primary,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
           Text(AppLocalizations.of(context)!.or
            , style: const TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.w400
            ),),
          const SizedBox(width: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Container(
              height: 2.0,
              width: MediaQuery.of(context).size.width / 5,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.primary,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
          const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                backgroundColor: AppColor.primary,
                minimumSize: const Size(double.infinity, 50),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/login/iconGoogle.png'),
                  const SizedBox(width: 10,),
                   Text(
                    AppLocalizations.of(context)!.logInWithGoogle,
                    style: const TextStyle(
                      color: Colors.black
                    ),
                  )
                ],
              ),
            ),
      SizedBox(height: 50,),
      GestureDetector(
        onTap: () {
          setState(() {
            isEnglish = !isEnglish;
            Locale newLocale = isEnglish ? Locale('en') : Locale('ar');
            MyApp.setLocale(context, newLocale);
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 80,
          height: 40,
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColor.primary, width: 2),
          ),
          child: Stack(
            children: [
              Align(
                alignment: isEnglish ? Alignment.centerLeft : Alignment.centerRight,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage(isEnglish ? 'assets/usa.png' : 'assets/egypt.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipOval(
                      child: Image.asset('assets/flags/usa2.png', width: 30, height: 30,
                      fit: BoxFit.cover,)),
                  ClipOval(child: Image.asset('assets/flags/egy.png', width: 30, height: 30)),
                ],
              ),
            ],
          ),
        ),
      )
    ]
    ),
        ),

        )
    );
  }
}
