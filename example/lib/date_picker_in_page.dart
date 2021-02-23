import 'package:flutter/material.dart';
import 'package:datepicker/datepicker.dart';

class DatePickerInPage extends StatefulWidget {
  DatePickerInPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DatePickerInPageState();
}

const String MIN_DATETIME = '1920-01-01';
const String MAX_DATETIME = '2020-12-31';
const String INIT_DATETIME = '2021-02-21';//-100year
const String DATE_FORMAT = 'yyyy MMMM dd';

class _DatePickerInPageState extends State<DatePickerInPage> {
  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.parse(INIT_DATETIME);
  }

  @override
  Widget build(BuildContext context) {
    return DatePickerWidget(
      onMonthChangeStartWithFirstDate: true,
      locale: DateTimePickerLocale.th,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: DateTime.parse(INIT_DATETIME),
      dateFormat: DATE_FORMAT,
      pickerTheme: DateTimePickerTheme(
        backgroundColor: Colors.white,
        itemTextStyle: TextStyle(color: Colors.deepOrange),
        showTitle: true,
        confirm: Container(width:  double.maxFinite,child:  Center(child: Text('ตกลง',style: TextStyle(color: Colors.black),))),
        cancel: Container(width:  double.maxFinite,child: Center(child: Text('ตกลง',style: TextStyle(color: Colors.white),),),),
        pickerHeight: 250,
        itemHeight: 30.0,
      ),
      onChange: (dateTime, selectedIndex) {
        setState(() {
          _dateTime = dateTime;
          print(dateTime);
        });
      },
    );
  }
}
