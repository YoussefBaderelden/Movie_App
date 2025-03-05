import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../theme/appColor.dart';

class ForgetPassword extends StatelessWidget {

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
              AppLocalizations.of(context)!.forgetYourPassword,
              style: const TextStyle(
                  color: AppColor.primary,
                  fontWeight: FontWeight.w300
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset('assets/forgetpassword/forgetPassword.png',
                   width: MediaQuery.of(context).size.width,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.start,
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
              ),
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
                  child:  Text(AppLocalizations.of(context)!.verifyMail,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
