import 'package:flutter/material.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none, // 텍스트 필드 아래줄 제거
        filled: true, // 해줘야 색상을 적용할 수 있음
        fillColor: Colors.grey[300],
      ),
    );
  }
}
