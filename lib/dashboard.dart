import 'package:flutter/material.dart';

import 'package:text_form_field_wrapper/text_form_field_wrapper.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    TextFormField formField = TextFormField(
      initialValue: '',
      decoration: const InputDecoration(border: InputBorder.none),
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 700),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // spacer
                  // const SizedBox(height: 20),

                  // Example of TextFormFieldWrapper with position 'alone'
                  // const Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  //   child: Text(
                  //     'Add Your Note',
                  //     style: TextStyle(fontSize: 15),
                  //   ),
                  // ),
                  // TextFormFieldWrapper(
                  //   formField: formField,
                  //   position: TextFormFieldPosition.alone,
                  // ),

                  // // spacer
                  // const SizedBox(height: 20),

                  // // Example of TextFormFieldWrapper with position 'alone'
                  // // and with a prefix Widget
                  // const Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  //   child: Text(
                  //     'Add Your Task',
                  //     style: TextStyle(fontSize: 15),
                  //   ),
                  // ),
                  // TextFormFieldWrapper(
                  //   formField: formField,
                  //   position: TextFormFieldPosition.alone,
                  // ),

                  // // spacer
                  // const SizedBox(height: 20),

                  // Example of TextFormFieldWrapper with position 'alone'
                  // and with a suffix Widget
                  // const Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  //   child: Text('Standalone field with suffix only'),
                  // ),
                  // TextFormFieldWrapper(
                  //   formField: formField,
                  //   position: TextFormFieldPosition.alone,
                  //   suffix: const Text('Suffix'),
                  // ),

                  // spacer
                  // const SizedBox(height: 20),

                  // Example of TextFormFieldWrapper with position 'alone'
                  // and with a prefix Widget and suffix

                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                    child: Text(
                      'Add Your Task',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Column(
                    children: [
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.top,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.center,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.bottom,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.top,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.center,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.bottom,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.top,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.center,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.bottom,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.top,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.center,
                      ),
                      TextFormFieldWrapper(
                        formField: formField,
                        position: TextFormFieldPosition.bottom,
                      ),
                    ],
                  ),

                  // spacer
                  const SizedBox(height: 20),

                  // Example of TextFormFieldWrappers in a grid like setup
                  // with positions 'top','bottomLeft' and 'bottomRight'
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  ),
                  // Column(
                  //   children: [
                  //     TextFormFieldWrapper(
                  //       formField: TextFormField(
                  //         initialValue: '',
                  //         textAlign: TextAlign.center,
                  //         decoration: const InputDecoration(
                  //             hintText: '1234 1234 1234 1234',
                  //             hintStyle:
                  //                 TextStyle(letterSpacing: 6, fontSize: 18),
                  //             border: InputBorder.none),
                  //       ),
                  //       position: TextFormFieldPosition.top,
                  //       suffix: const Icon(Icons.credit_card),
                  //     ),
                  //     Row(
                  //       children: [
                  //         Expanded(
                  //           child: TextFormFieldWrapper(
                  //             formField: TextFormField(
                  //               initialValue: '',
                  //               textAlign: TextAlign.center,
                  //               decoration: const InputDecoration(
                  //                   hintText: 'MM/YY',
                  //                   hintStyle: TextStyle(
                  //                       letterSpacing: 6, fontSize: 18),
                  //                   border: InputBorder.none),
                  //             ),
                  //             position: TextFormFieldPosition.bottomLeft,
                  //           ),
                  //         ),
                  //         Expanded(
                  //           child: TextFormFieldWrapper(
                  //             formField: TextFormField(
                  //               initialValue: '',
                  //               textAlign: TextAlign.center,
                  //               decoration: const InputDecoration(
                  //                   hintText: 'CVV',
                  //                   hintStyle: TextStyle(
                  //                       letterSpacing: 6, fontSize: 18),
                  //                   border: InputBorder.none),
                  //             ),
                  //             position: TextFormFieldPosition.bottomRight,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 80,
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
