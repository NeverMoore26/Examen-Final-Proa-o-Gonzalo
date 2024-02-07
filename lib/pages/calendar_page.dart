import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //cometario 1: final calendar = ref.watch(getCalendar);
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Calendar"),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Center(
            child: Text("No se debe ver este texto"),
          ),
        ),
      ),
    );
  }
}
