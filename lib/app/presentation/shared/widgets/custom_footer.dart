import 'package:flutter/cupertino.dart';

import '../theme/app_fonts.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 0,
      ),
      child: Text(
        text!,
        style: AppFonts.footerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
