import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../../shared/theme/app_theme.dart';
import '../../shared/widgets/custom_appbar.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_footer.dart';

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
                CustomButton(
                    text: "Search Flights",
                    onTap: () => Get.toNamed("flight_list")),
                CustomButton(
                    text: "Search Airports",
                    onTap: () => Get.toNamed("airport_list")),
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
