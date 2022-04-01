import 'package:flutter/material.dart';
import 'package:infraero_app/app/presentation/shared/theme/app_theme.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_appbar.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_button.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        appBar: CustomAppBar(key: key),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const CustomButton(text: "Search Flights"),
                const CustomButton(text: "Search Airports"),
              ],
            ),
          ),
        ),
        bottomNavigationBar:
            const CustomFooter(text: "Desenvolvido por Rafael Freitas"),
      ),
    );
  }
}
