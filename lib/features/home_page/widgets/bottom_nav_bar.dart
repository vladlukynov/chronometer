import 'package:chronometer/features/home_page/bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final _items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: _items,
      currentIndex: BlocProvider.of<HomePageBloc>(context).state.bottomBarIndex,
      onTap: (value) => BlocProvider.of<HomePageBloc>(context)
          .add(UpdateBottomBarIndex(newIndex: value)),
    );
  }
}
