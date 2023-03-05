import 'package:flutter/material.dart';
import 'package:flutter_app_feedback/helpers/screenshot.helper.dart';
import 'package:flutter_app_feedback/ui/screens/feedback.screen.dart';

import 'package:flutter_svg/svg.dart';
import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

import 'Cunst.dart';


class SendFeedbackPage extends StatefulWidget {
  const SendFeedbackPage({Key? key}) : super(key: key);

  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            _homeScreen(),
            ElevatedButton(
              onPressed: () async {
                // Capture the Screen Shot and save to a variable of your choice.
                final imagePath =
                    await FeedbackScreenshot(context).captureScreen(
                  // Set the widget tree of whom you want to take screen shot before
                  // navigation to the FeedbackScreen
                  screen: _homeScreen(),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => FeedbackScreen(
                      // Type of the report whether report is initiated by the
                      // system or the user.
                      reportType: 'User initiated report',

                      // Is the email editable by te user
                      isEmailEditable: false,

                      // User Id of the currently authenticated user
                      userId: '1Fcb78snP12A619mb',

                      // if you need to set a default email in From Email field.
                      fromEmail: 'user@example.com',

                      // Use the image that we have received from about function.
                      screenShotPath: imagePath,

                      // This text is shown at the bottom of the Feedback Screen
                      // which describes how you will use the information.
                      feedbackFooterText:
                          'Some System Logs will be sent to Developer.',

                      // Handel when the feedback submission is started
                      onFeedbackSubmissionStarted: () {
                        //print('Feedback Submission Started');
                      },

                      // Handel when feedback submission is completed.
                      onFeedbackSubmitted: (bool result) {
                        if (result) {
                          //print('Feedback Submitted Successfully');
                        } else {
                          //print('Error in submitting the Feedback');
                        }
                      },
                    ),
                  ),
                );
              },
              child: const Text('Send Feedback'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeScreen() {
    return SizedBox(
      height: 600,
      child: ListView.builder(
          padding: const EdgeInsets.only(
            top: 30,
            left: 30,
          ),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              'Item $index',
              style: const TextStyle(color: Colors.black),
            );
          }),
    );
  }
}

