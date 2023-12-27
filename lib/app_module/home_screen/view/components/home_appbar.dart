import 'dart:convert';

import 'package:deelly/utils/common_widgets/image_paths.dart';
import 'package:deelly/utils/common_widgets/image_widget.dart';
import 'package:deelly/utils/extensions/textStyle_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
        _selectedCode = _countryCodes[0]['code'];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25) +
          EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropdownButton<String>(
            isDense: true,
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 9.sp,
              color: Colors.black.withOpacity(0.50),
            ),
            padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
            isExpanded: false,
            value: _selectedCode,
            items:
                _countryCodes.map<DropdownMenuItem<String>>((dynamic country) {
              return DropdownMenuItem<String>(
                value: country['code'],
                child: Text(
                  '${country['code']}',
                  style: TextStyle().homeAppBarDropDown,
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
          ImageWidget(
            imagePath: ImagePath.logo,
            width: 90,
            height: 29,
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ImageWidget(
                    imagePath: ImagePath.cart,
                    width: 24,
                    height: 24,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 20,
                    height: 20,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF64545),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '03',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
