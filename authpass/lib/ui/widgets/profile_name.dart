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
                color: Color.fromRGBO(242, 212, 170, 1),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, .15), width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(getFirstCharsOfName(name)),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text('$name'),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
                onTap: () {},
                child: const Icon(Icons.keyboard_arrow_down_outlined)),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}