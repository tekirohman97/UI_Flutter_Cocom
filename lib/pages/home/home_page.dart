import 'package:app_flutter_cocom/pages/akun/akun_page.dart';
import 'package:app_flutter_cocom/pages/assessment/assesment5_page.dart';
import 'package:app_flutter_cocom/pages/assessment/assessment2_page.dart';
import 'package:app_flutter_cocom/pages/assessment/assessment3_page.dart';
import 'package:app_flutter_cocom/pages/assessment/assessment4_page.dart';
import 'package:app_flutter_cocom/pages/assessment/assessment_page.dart';
import 'package:app_flutter_cocom/pages/data_survey/survey_page.dart';
import 'package:app_flutter_cocom/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int pageIndex = 0;

  final pages = [
    const Home_Select(),
    const Akun_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroun,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: kBackgroun,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 40,
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kBlackColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.home,
                      color: kBlackColor,
                      size: 25.0,
                    ),
                  )
                : Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kBlackColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.home,
                      color: kBlackColor.withOpacity(0.5),
                      size: 25.0,
                    ),
                  ),
          ),
          IconButton(
              iconSize: 40,
              enableFeedback: false,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Assessment_Page5()));
              },
              icon: Container(
                width: 41,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kBlackColor.withOpacity(0.2),
                ),
                child: Icon(
                  Icons.assignment_outlined,
                  color: kBlackColor.withOpacity(0.5),
                  size: 25.0,
                ),
              )),
          IconButton(
              iconSize: 40,
              enableFeedback: false,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Survey_page()));
              },
              icon: Container(
                width: 41,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kBlackColor.withOpacity(0.2),
                ),
                child: Icon(
                  Icons.dns_rounded,
                  color: kBlackColor.withOpacity(0.5),
                  size: 25.0,
                ),
              )),
          IconButton(
            iconSize: 40,
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kBlackColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      LineAwesomeIcons.user,
                      color: kBlackColor,
                      size: 25.0,
                    ),
                  )
                : Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kBlackColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      LineAwesomeIcons.user,
                      color: kBlackColor.withOpacity(0.5),
                      size: 25.0,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class Home_Select extends StatelessWidget {
  const Home_Select({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 102,
            width: double.infinity,
            color: kPrimaryColor,
            child: Row(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 82,
                  height: 82,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
