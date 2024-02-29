import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  // 24H
  // 테스트니까 시간만 받기
  final int startTime;
  final int endTime;
  final String content;
  final Color color;

  const ScheduleCard({
    required this.startTime,
    required this.endTime,
    required this.content,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _Time(
            startTime: startTime,
            endTime: endTime,
          ),
        ],
      ),
    );
  }
}

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;

  const _Time({
    required this.startTime,
    required this.endTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$startTime:00'),
        Text('$endTime:00'),
      ],
    );
  }
}
