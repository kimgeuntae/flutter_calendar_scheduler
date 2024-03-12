import 'package:flutter/material.dart';

class ScheduleBottomSheet extends StatelessWidget {
  const ScheduleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // 시스템 UI 사이즈
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      height: MediaQuery.of(context).size.height / 2 + bottomInset,
      color: Colors.white,
      child: Padding(
        // bottomInset만큼 아래에 패딩을 줌
        // 그러면 시스템 UI 사이즈가 생길때 자동으로 그만큼 패딩이 들어가서 bottomSheet 가 위로 올라감
        padding: EdgeInsets.only(bottom: bottomInset),
        child: Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
