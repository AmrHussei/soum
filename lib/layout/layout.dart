import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soumtech/business%20logic/app__cubit/cubit/appcubit_cubit.dart';
import 'package:soumtech/core/constant/colors.dart';
import 'package:soumtech/core/constant/constants.dart';
import 'package:soumtech/core/helper/assets.dart';

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
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.changeBottom(index);
              },
              currentIndex: cubit.currentIndex,
              items: [
                BottomNavigationBarItem(
                    label: translateString("Home", "الرئيسية"),
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      width: 20.w,
                      color: cubit.currentIndex == 0
                          ? MyColors.mainColor
                          : Colors.grey,
                    )),
                BottomNavigationBarItem(
                    label: translateString("Stores", "المتاجر"),
                    icon: SvgPicture.asset(AssetsData.stores,
                        width: 20.w,
                        color: cubit.currentIndex == 1
                            ? MyColors.mainColor
                            : Colors.grey)),
                BottomNavigationBarItem(
                    label: translateString("Shopping Cart", "سلة التسوق"),
                    icon: SvgPicture.asset(AssetsData.cart,
                        width: 20.w,
                        color: cubit.currentIndex == 2
                            ? MyColors.mainColor
                            : Colors.grey)),
                BottomNavigationBarItem(
                    label: translateString("Orders", "طلباتي"),
                    icon: SvgPicture.asset(AssetsData.task,
                        width: 20.w,
                        color: cubit.currentIndex == 3
                            ? MyColors.mainColor
                            : Colors.grey)),
                BottomNavigationBarItem(
                    label: translateString("Settings", "حسابي"),
                    icon: SvgPicture.asset(AssetsData.account,
                        width: 20.w,
                        color: cubit.currentIndex == 4
                            ? MyColors.mainColor
                            : Colors.grey)),
              ],
            ),
          );
        });
  }
}
