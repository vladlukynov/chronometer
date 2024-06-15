part of 'home_page_bloc.dart';

abstract class HomePageEvent {}

class UpdateBottomBarIndex extends HomePageEvent {
  UpdateBottomBarIndex({required this.newIndex});

  final int newIndex;
}
