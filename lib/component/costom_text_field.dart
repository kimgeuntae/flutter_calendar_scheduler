import 'package:flutter/material.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none, // 텍스트 필드 아래줄 제거
      ),
    );
  }
}
