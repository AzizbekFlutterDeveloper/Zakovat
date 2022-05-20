import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:zakovat/bloc/home_cubit.dart';
import 'package:zakovat/bloc/home_state.dart';
import 'package:zakovat/core/constans/color_cons.dart';

class VideoPage extends StatefulWidget {
  final String video;
  const VideoPage({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          Builder(
            builder: (context) {
              context.read<HomeCubit>().addVideo(widget.video);
              return Column();
            },
          );
          return _myScaffold(context);
        },
      ),
    );
    ;
  }

  Scaffold _myScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.scaffoldColor,
      appBar: context.watch<HomeCubit>().isFull == false
          ? AppBar(
              backgroundColor: ConstColor.scaffoldColor,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/image/charm_share.svg"),
                ),
              ],
            )
          : null,
      body: Column(
        children: [
          Container(
            height: context.watch<HomeCubit>().isFull == true
                ? MediaQuery.of(context).size.height * 0.9
                : MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: YoutubePlayerBuilder(
              onEnterFullScreen: () {
                context.read<HomeCubit>().addFull();
              },
              onExitFullScreen: () {
                context.read<HomeCubit>().addFull();
              },
              player: YoutubePlayer(
                controller: context.watch<HomeCubit>().controller,
              ),
              builder: (BuildContext context, Widget widget) {
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
