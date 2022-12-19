import 'package:flutter/material.dart';

class FlagButton extends StatelessWidget {
  const FlagButton(
      {super.key, required this.text, required this.flag, required this.onTap});
  // const FlagButton({Key key, this.text, this.flag, this.onTap})
  //     : super(key: key);

  final String text;
  final String flag;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.teal[400],
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Image.asset(
              'assets/$flag',
              width: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
