import 'package:calendar_scheduler/component/calendar.dart';
import 'package:calendar_scheduler/component/schedule_bottom_sheet.dart';
import 'package:calendar_scheduler/component/schedule_card.dart';
import 'package:calendar_scheduler/component/today_banner.dart';
import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: renderFloatingActionButton(),
      body: SafeArea(
        child: Column(
          children: [
            Calendar(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              onDaySelected: onDaySelected,
            ),
            SizedBox(height: 8.0),
            TodayBanner(
              selectedDay: selectedDay,
              scheduleCount: 3,
            ),
            SizedBox(height: 8.0),
            _ScheduleList(),
          ],
        ),
      ),
    );
  }

  FloatingActionButton renderFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          // showModalBottomSheet는 기본 최대사이즈가 전체화면의 절반.
          // isScrollControlled: true 를 하면 전체사이즈까지 크기를 늘릴수있다.
          isScrollControlled: true,
          builder: (context) {
            return ScheduleBottomSheet();
          },
        );
      },
      backgroundColor: PRIMARY_COLOR,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Icon(Icons.add),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      // 선택날짜를 포커스 데이트로 지정해줌으로써 해당 월로 이동 가능
      this.focusedDay = selectedDay;
    });
  }
}

class _ScheduleList extends StatelessWidget {
  const _ScheduleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.separated(
          // 아이템 카운트만큼 return 값 빌드, 해당 카운트에 도달했을때 새롭게 만듬.
          // 예를들어 현재 보고있는게 5번째라면 6번째이후는 아직 안만들어졌기때문에 메모리에 효과적.
          itemCount: 10,
          itemBuilder: (context, index) {
            return ScheduleCard(
              startTime: 8,
              endTime: 14,
              content: '프로그래밍 공부하기 $index',
              color: Colors.red,
            );
          },
          // item 사이에 return 값을 추가해줘서 구분선을 넣는데 사용.
          separatorBuilder: (context, index) => SizedBox(height: 8.0),
        ),
      ),
    );
  }
}
