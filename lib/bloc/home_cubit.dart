import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zakovat/bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int index = 0;

  void addIndex(){
    index += 1;
    emit(SplashState());
  }
}