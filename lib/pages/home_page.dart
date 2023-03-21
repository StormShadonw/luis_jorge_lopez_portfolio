import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:luis_jorge_lopez_portfolio/providers/data_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String routeName = "/Home Page";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          alignment: Alignment.topCenter,
          width: size.width * 1,
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 1024,
            ),
            width: size.width * 0.85,
            padding: const EdgeInsets.only(
              top: 15,
              left: 10,
              right: 10,
            ),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  alignment: Alignment.centerRight,
                  child: Consumer<DataProvider>(
                    builder: (context, dataProvider, child) {
                      return Text(
                          "${DateFormat.jm().format(dataProvider.current.toUtc().subtract(const Duration(hours: 4)))} - Santo Domingo, República Dominicana");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Text(
                    "Luis Jorge López",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.orangeAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        "Flutter Developer",
                        textAlign: TextAlign.center,
                        textStyle:
                            Theme.of(context).textTheme.bodyText2!.copyWith(
                                  fontSize: 202,
                                  fontWeight: FontWeight.bold,
                                ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
