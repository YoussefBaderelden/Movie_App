import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../theme/appColor.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: AppLocalizations.of(context)!.localeName == 'ar'
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
          leading:IconButton(
            icon: const Icon(Icons.arrow_back),
          onPressed: (){
              Navigator.pushNamed(context, '/logIn');
          },
          color: AppColor.primary,) ,
            title: Text(
              AppLocalizations.of(context)!.register,
              style: const TextStyle(
                color: AppColor.primary,
                fontWeight: FontWeight.w300
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/register/register.png',
                    width: MediaQuery.of(context).size.width,)
                ],

              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Avatar",
                  style: TextStyle(
                    color: Colors.white
                  ),)
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                      labelText: AppLocalizations.of(context)!.name,
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: AppLocalizations.of(context)!.name,
                      hintStyle: const TextStyle(color: Colors.white54),
                      prefixIcon : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/register/icons/name.png', width: 24, height: 24),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: AppLocalizations.of(context)!.enterValidEmail,
                      hintStyle: const TextStyle(color: Colors.white54),
                      prefixIcon : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/register/icons/iconmail.png', width: 24, height: 24),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                      hintText: AppLocalizations.of(context)!.enterYourPassword,
                      hintStyle: const TextStyle(color: Colors.white54),
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
                      prefixIcon : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/register/icons/iconpassword.png', width: 24, height: 24),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                      labelText: AppLocalizations.of(context)!.confirmPassword,
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: AppLocalizations.of(context)!.confirmPassword,
                      hintStyle: const TextStyle(color: Colors.white54),
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
                      prefixIcon : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/register/icons/iconpassword.png', width: 24, height: 24),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                      labelText: AppLocalizations.of(context)!.phoneNumber,
                      labelStyle: const TextStyle(color: Colors.white70),
                      hintText: AppLocalizations.of(context)!.phoneNumber,
                      hintStyle: const TextStyle(color: Colors.white54),
                      prefixIcon : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/register/icons/phoneNum.png', width: 24, height: 24),

                      )
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor: AppColor.primary,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child:  Text(AppLocalizations.of(context)!.createAccount,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Row(
                    children: [
                       Text(
                         AppLocalizations.of(context)!.alreadyHaveAccount,
                         style: const TextStyle(
                             color: Colors.white
                         ),
                       ),
                      TextButton(
                        child: (
                            Text(AppLocalizations.of(context)!.logIn,
                              style: const TextStyle(
                                  color: AppColor.primary
                              ),)
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/logIn');
                        },
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
