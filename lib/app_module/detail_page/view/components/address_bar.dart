import 'package:flutter/material.dart';

class AddressBar extends StatelessWidget {
  const AddressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 18,
            color: Color(0xFFA3A6AC),
          ),
          Text(
            'Abu Dhabi, United Arab Emirates',
            style: TextStyle(
              color: Color(0xFFA3A6AC),
              fontSize: 14,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
