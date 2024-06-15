import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState(bottomBarIndex: 0)) {
    on<UpdateBottomBarIndex>(
        (event, emit) => emit(HomePageState(bottomBarIndex: event.newIndex)));
  }
}
