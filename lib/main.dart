import 'package:calendar_scheduler/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  // runApp 실행전에 기본적으로 실행되는 코드
  // runApp 전에 다른 코드를 실행할시 작성
  // 플러터 프레임워크가 준비됐는지 확인하는 코드
  WidgetsFlutterBinding.ensureInitialized();

  // intl 패키지 초기화
  await initializeDateFormatting();

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      home: HomeScreen(),
    ),
  );
}
