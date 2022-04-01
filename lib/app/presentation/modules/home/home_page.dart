import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:infraero_app/app/presentation/shared/theme/app_theme.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_appbar.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_button.dart';
import 'package:infraero_app/app/presentation/shared/widgets/custom_footer.dart';
=======
import 'package:get/get.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_fonts.dart';
import '../../shared/theme/app_theme.dart';
import '../../shared/widgets/custom_appbar.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_footer.dart';
>>>>>>> 584358c8dd4ce7f998a3dab83fe116dfe6270f6f

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
                const CustomButton(
                  text: "Search Flights", 
                  toPage: "airport_list"
                ),
                const CustomButton(
                  text: "Search Airports",
                  toPage: "airport_list"
                ),
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
