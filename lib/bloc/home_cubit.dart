import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zakovat/bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  StreamController<int> selected = StreamController<int>();

  int index = 0;

  void addIndex() {
    index += 1;
    emit(SplashState());
  }

  void addSelect() {
    selected.add(
      Fortune.randomInt(0, 10),
    );
    emit(SplashState());
  }

  late YoutubePlayerController controller;

  bool isFull = false;
  bool isVideo = false;

  void addVideo(video) {
    controller = YoutubePlayerController(
      initialVideoId: video,
    );
    isVideo = true;
   emit(VideoState());
  }

  void addFull(){
    isFull = !isFull;
    emit(VideoState());
  }
}
