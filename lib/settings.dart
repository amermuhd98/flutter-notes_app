import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
// import 'package:intl/intl.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;

  bool shouldCheckDefaul = false;
  bool saveAuto = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("dknc"),
      // ),
      backgroundColor: Colors.blue.withOpacity(0.5),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'ALL SAVE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          CustomCheckBox(
            value: shouldCheckDefault,
            splashColor: Colors.red.withOpacity(0.4),
            tooltip: 'Custom Check Box',
            splashRadius: 40,
            onChanged: (val) {
              //do your stuff here
              setState(() {
                shouldCheckDefault = val;
              });
            },
          ),
          // Text(
          //   'setting app',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 14.0,
          //     fontWeight: FontWeight.bold,
          //     fontStyle: FontStyle.italic,
          //   ),
          // ),
          // SizedBox(
          //   height: 40,
          // ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Customized Style for app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          CustomCheckBox(
            value: shouldCheck,
            shouldShowBorder: true,
            // borderColor: Colors.red,
            // checkedFillColor: Colors.red,
            borderRadius: 8,
            borderWidth: 1,
            checkBoxSize: 22,
            onChanged: (val) {
              //do your stuff here
              setState(() {
                shouldCheck = val;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Custom Picture for app',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          CustomCheckBox(
            value: shouldCheckDefault,
            splashColor: Colors.red.withOpacity(0.4),
            tooltip: 'Custom Check Box',
            splashRadius: 40,
            onChanged: (val) {
              //do your stuff here
              setState(() {
                shouldCheckDefault = val;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Auto Save',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          CustomCheckBox(
            value: shouldCheckDefaul,
            splashColor: Colors.red.withOpacity(0.4),
            tooltip: 'Custom Check Box',
            splashRadius: 40,
            onChanged: (val) {
              print("yes");
              //do your stuff here
              setState(() {
                shouldCheckDefaul = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
