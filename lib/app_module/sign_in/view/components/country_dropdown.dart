import 'package:deelly/utils/common_widgets/string_names.dart';
import 'package:deelly/utils/extensions/colors_extensions.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:sizer/sizer.dart';

class CountryCodeDropdown extends StatefulWidget {
  @override
  _CountryCodeDropdownState createState() => _CountryCodeDropdownState();
}

class _CountryCodeDropdownState extends State<CountryCodeDropdown> {
  List<dynamic> _countryCodes = [];
  String _selectedCode = '';

  @override
  void initState() {
    super.initState();
    _loadCountryCodes();
  }

  Future<void> _loadCountryCodes() async {
    String data =
        await rootBundle.loadString('assets/jsons/country_codes.json');
    setState(
      () {
        _countryCodes = json.decode(data);
        _selectedCode = _countryCodes[0]['dial_code'];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(
                isDense: true,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.black.withOpacity(0.50),
                ),
                padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
                isExpanded: false,
                value: _selectedCode,
                items: _countryCodes
                    .map<DropdownMenuItem<String>>((dynamic country) {
                  return DropdownMenuItem<String>(
                    value: country['dial_code'],
                    child: Opacity(
                      opacity: 0.50,
                      child: Text(
                        '${country['dial_code']}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                }).toList(),
                underline: SizedBox(),
                onChanged: (value) {
                  setState(() {
                    _selectedCode = value!;
                  });
                },
              ),
              VerticalDivider(
                width: 0,
                thickness: 1,
                color: Colors.black,
              ),
              SizedBox(
                width: 12,
              )
            ],
          ),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          hintText: StringNames.enter_phone,
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10.sp,
            ),
            borderSide: BorderSide(
              color: color.appBrown,
              width: 1.sp,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              10.sp,
            ),
            borderSide: BorderSide(
              color: color.appBrown,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
