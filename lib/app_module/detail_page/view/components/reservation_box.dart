import 'package:deelly/app_module/detail_page/controller/reservation_box_controller.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReservationBox extends StatefulWidget {
  ReservationBox({super.key});

  @override
  State<ReservationBox> createState() => _ReservationBoxState();
}

class _ReservationBoxState extends State<ReservationBox> {
  ReservationBoxController controller = Get.put(ReservationBoxController());

  String getMonthName(int monthNumber) {
    return DateFormat('MMM').format(DateTime(2022, monthNumber));
  }

  String dropdownValue = "Palm Jumeirah";

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.appLightGreen,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Location',
            style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 14,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFFE7E7E7),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              isDense: true,
              value: dropdownValue,
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFFB4B4B6),
              ),
              iconSize: 12,
              underline: SizedBox(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'Palm Jumeirah',
                'Palm Jumeirah 2',
                'Palm Jumeirah 3',
                'Palm Jumeirah 555'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Color(0xFFB4B4B6),
                      fontSize: 16,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Select Date',
            style: TextStyle(
              color: Color(0xFF808080),
              fontSize: 14,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              selectDate(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFFE7E7E7),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${selectedDate.day} ${getMonthName(selectedDate.month).toUpperCase()} ${selectedDate.year}",
                    style: TextStyle(
                      color: Color(0xFFB4B4B6),
                      fontSize: 16,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Icon(
                    Icons.calendar_month_rounded,
                    color: Color(0xFFB4B4B6),
                    size: 24,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 13),
            child: Text(
              'Choose Time Slot',
              style: TextStyle(
                color: Color(0xFF101928),
                fontSize: 14,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) {
              return Container(
                width: 100,
                height: 80,
                decoration: ShapeDecoration(
                  color: index == 0 ? Color(0xFF5ACD84) : Color(0xFFD6EFE9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1:00 PM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: index == 0 ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Seat: 15',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: index == 0 ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Reservation Fee',
                    style: TextStyle(
                      color: Color(0xFFA3A6AC),
                      fontSize: 14,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Text(
                    '20 AED',
                    style: TextStyle(
                      color: Color(0xFF101928),
                      fontSize: 24,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Icon(Icons.remove_rounded),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Color(0xFF101928),
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                child: Icon(Icons.add_rounded),
              )
            ],
          )
        ],
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2050),
      // Customize date range as needed
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}
