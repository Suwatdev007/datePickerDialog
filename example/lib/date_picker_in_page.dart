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
        cancelTextStyle: TextStyle(color: Colors.white),
        confirmTextStyle: TextStyle(color: Colors.black),
        itemTextStyle: TextStyle(color: Colors.deepOrange),
        showTitle: true,
        confirm: FlatButton(minWidth:  double.maxFinite,color: Colors.deepOrange, onPressed: () {  }, child: Text('ตกลง',style: TextStyle(color: Colors.white),),),
        cancel: FlatButton(minWidth:  double.maxFinite,onPressed: () {  }, child: Text('ยกเลิก'),),
        pickerHeight: 250,
        itemHeight: 30.0,
      ),
      onChange: (dateTime, selectedIndex) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
}
