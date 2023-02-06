import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:soumtech/business%20logic/app__cubit/cubit/appcubit_cubit.dart';
import 'package:soumtech/core/constant/colors.dart';
import 'package:soumtech/core/constant/constants.dart';
import 'package:soumtech/core/helper/assets.dart';
import 'package:fancy_bottom_navigation_plus/fancy_bottom_navigation_plus.dart';

class AppLayoutScreen extends StatefulWidget {
  AppLayoutScreen({super.key, this.index});
  int? index;
  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  int currentIndex = 0;
  @override
  gatScreen() {
    if (widget.index != null) {
      setState(() {
        currentIndex = widget.index!;
      });
    } else {
      setState(() {
        currentIndex = 0;
      });
    }
  }

  void initState() {
    gatScreen();

    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: FancyBottomNavigationPlus(
              animDuration: 200,
              initialSelection: cubit.currentIndex,
              circleRadius: 60.w,
              onTabChangedListener: (index) {
                cubit.changeBottom(index);
              },
              circleColor: Colors.deepOrangeAccent,

              // currentIndex: cubit.currentIndex,
              // items: [
              //   BottomNavigationBarItem(
              //       label: translateString("", ""),
              //       icon: FaIcon(FontAwesomeIcons.bell,
              //           size: 20.w,
              //           color: cubit.currentIndex == 0
              //               ? Colors.deepOrangeAccent
              //               : Colors.grey)),
              //   BottomNavigationBarItem(
              //       label: translateString(" ", " "),
              //       icon: FaIcon(FontAwesomeIcons.wallet,
              //           size: 20.w,
              //           color: cubit.currentIndex == 1
              //               ? Colors.deepOrangeAccent
              //               : Colors.grey)),
              //   BottomNavigationBarItem(
              //       label: translateString("", ""),
              //       icon: FaIcon(FontAwesomeIcons.home,
              //           size: 20.w,
              // color: cubit.currentIndex == 2
              //     ? Colors.deepOrangeAccent
              //     : Colors.grey)),
              //   BottomNavigationBarItem(
              //       label: translateString("", ""),
              //       icon: FaIcon(FontAwesomeIcons.heart,
              //           size: 20.w,
              //           color: cubit.currentIndex == 3
              //               ? Colors.deepOrangeAccent
              //               : Colors.grey)),
              //   BottomNavigationBarItem(
              //       label: translateString("", ""),
              //       icon: SvgPicture.asset(AssetsData.account,
              //           width: 20.w,
              //           color: cubit.currentIndex == 4
              //               ? Colors.deepOrangeAccent
              //               : Colors.grey)),
              // ],
              tabs: [
                TabData(
                    icon: Icon(
                      Icons.notification_important,
                      color:
                          cubit.currentIndex == 0 ? Colors.white : Colors.grey,
                    ),
                    title: ""),
                TabData(
                    icon: Icon(
                      Icons.wallet,
                      color:
                          cubit.currentIndex == 1 ? Colors.white : Colors.grey,
                    ),
                    title: ""),
                TabData(
                    icon: Icon(Icons.home,
                        color: cubit.currentIndex == 2
                            ? Colors.white
                            : Colors.grey),
                    title: ""),
                TabData(
                    icon: Icon(
                      Icons.favorite_outline,
                      color:
                          cubit.currentIndex == 3 ? Colors.white : Colors.grey,
                    ),
                    title: ""),
                TabData(
                    icon: Icon(
                      Icons.person,
                      color:
                          cubit.currentIndex == 4 ? Colors.white : Colors.grey,
                    ),
                    title: ""),
              ],
            ),
          );
        });
  }
}
