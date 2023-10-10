import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileName extends StatelessWidget {
  final String name;
  const ProfileName({super.key, required this.name});

  String getFirstCharsOfName(String inputString) {
    List<String> names = inputString.split(' ');
    return names[0][0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 212, 170, 1),
                border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, .15), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(getFirstCharsOfName(name)),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '$name',
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color(
                    0xFF333333), // Hexadecimal representation of color #333
                fontWeight: FontWeight.normal,
                // You can set margin and cursor properties when using this style in your widget
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {},
                child: const Icon(Icons.keyboard_arrow_down_outlined)),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
