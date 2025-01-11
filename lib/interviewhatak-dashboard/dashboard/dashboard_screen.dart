import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:interviewhatak_dashboard/core/di/dependency_injection.dart';
import 'package:interviewhatak_dashboard/core/theming/app_strings/app_string.dart';
import 'package:interviewhatak_dashboard/core/widgets/text_input_fields_widget.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/category_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/category/controller/category_cubit.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/home/home_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/question/question_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/section/section_screen.dart';
import 'package:interviewhatak_dashboard/interviewhatak-dashboard/setting/setting_screen.dart';
import 'package:tab_container/tab_container.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(AppString.interviewhatak),
            Spacer(),
            SizedBox(
              width: 400,
              child: TextInputFieldsWidget(
                controller: searchController,
                textInputType: TextInputType.name,
                hintName: AppString.searchForAnything,
                prefixIcon: IconBroken.Search,
                validate: (value) {
                  return value;
                },
              ),
            ),
          ],
        ),
      ),
      body: AspectRatio(
        aspectRatio: 10 / 4.6,
        child: TabContainer(
          colors: colors,
          tabs: tabs,
          borderRadius: BorderRadius.circular(20),
          tabEdge: TabEdge.left,
          curve: Curves.easeInOut,
          transitionBuilder: (child, animation) {
            animation =
                CurvedAnimation(curve: Curves.easeIn, parent: animation);
            return SlideTransition(
              position: Tween(
                begin: const Offset(0.2, 0.0),
                end: const Offset(0.0, 0.0),
              ).animate(animation),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          children: screens,
        ),
      ),
    );
  }

  final List<Color> colors = [
    Color(0xffa275e3),
    Color(0xfffa86be),
    Color(0xff9aebed),
    Color(0xffa275e3),
    Color(0xff9aebed),
  ];

  final List<Icon> tabs = [
    Icon(IconBroken.Home),
    Icon(IconBroken.Activity),
    Icon(IconBroken.Shield_Done),
    Icon(IconBroken.Bag_2),
    Icon(IconBroken.Setting),
  ];

  final List<Widget> screens = [
    HomeScreen(),
    BlocProvider(
      create: (context) => getIt<CategoryCubit>()..getCategoriesName(),
      child: CategoryScreen(),
    ),
    SectionScreen(),
    QuestionScreen(),
    SettingScreen(),
  ];
}
