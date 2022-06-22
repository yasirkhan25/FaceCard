import 'package:flutter/material.dart';
import 'package:flutter_app5/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatefulWidget {
  @override
  _DarkThemeScreenState createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {

    ///ChangeNotifierProvider
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(),

      ///Consumer
      child: Consumer<ThemeChanger>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: model.isDark == false ? Colors.black : Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    model.setColor();
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color:
                          model.isDark == false ? Colors.white : Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Light Mode',
                      style: TextStyle(
                          fontSize: 15,
                          color: model.isDark == false
                              ? Colors.black
                              : Colors.white),
                    )),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    model.setColor();
                  },
                  child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: model.isDark == true ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Dark Mode',
                        style: TextStyle(
                            fontSize: 15,
                            color: model.isDark == true
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
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
