import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(icon: Icons.favorite, color: Colors.red, value: video.likes,),
        _CustomIconButton(icon: Icons.remove_red_eye_outlined, value: video.views,)
      ]
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final int value;
  const _CustomIconButton(
      {required this.icon, this.color = Colors.white, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: color,
              size: 30,
            )),
        Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}