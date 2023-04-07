import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice/appTheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: allChatScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: PageConstant.pagePadding,
          child: Column(children: [const MianText()]),
        ),
      ),
    );
  }
}

AppBar allChatScreenAppBar() {
  return AppBar(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    automaticallyImplyLeading: false,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              height: 35,
              alignment: Alignment.center,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'CipherSchool',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                ))
          ],
        ),
        const Icon(
          Icons.menu,
          color: Colors.black,
          size: 35,
        )
      ],
    ),
    centerTitle: false,
    elevation: 10,
  );
}

class MianText extends StatelessWidget {
  const MianText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: 'Welcome to',
              fontSize: 0.04,
              fontColor: AppTheme.appTextColor,
            ),
            CustomText(
              padding: EdgeInsets.only(left: 10),
              text: 'the',
              fontSize: 0.04,
              fontColor: AppTheme.primaryColor,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: 'Future',
              fontSize: 0.04,
              fontColor: AppTheme.appTextColor,
            ),
            CustomText(
              text: 'of Learning!',
              fontSize: 0.04,
              fontColor: AppTheme.primaryColor,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        CustomText(
          textAlign: TextAlign.center,
          text: 'Start Learning By best Creators for',
          fontSize: 0.022,
          fontColor: AppTheme.appTextColor,
        ),
        CustomText(
          text: 'absolutely free!',
          fontSize: 0.03,
          fontColor: AppTheme.primaryColor,
        ),
      ],
    );
  }
}
