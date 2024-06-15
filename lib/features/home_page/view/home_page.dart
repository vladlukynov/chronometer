import 'package:chronometer/features/home_page/bloc/home_page_bloc.dart';
import 'package:chronometer/features/home_page/widgets/activity_list.dart';
import 'package:chronometer/features/home_page/widgets/bottom_nav_bar.dart';
import 'package:chronometer/features/home_page/widgets/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: HomePageView(
        title: title,
      ),
    );
  }
}

class HomePageView extends StatelessWidget {
  HomePageView({super.key, required this.title});

  final String title;

  final _items = [
    const MainPage(),
    const ActivityList(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: IndexedStack(
            index: BlocProvider.of<HomePageBloc>(context).state.bottomBarIndex,
            children: _items,
          ),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
