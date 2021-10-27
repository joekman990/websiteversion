import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strike_the_match/core/widgets/custom_text_field.dart';
import 'package:strike_the_match/core/widgets/info_card.dart';
import 'package:strike_the_match/core/widgets/info_card_data.dart';
import 'package:strike_the_match/theme/pallete.dart';

class AddNameScreen extends StatefulWidget {
  const AddNameScreen({Key? key}) : super(key: key);

  @override
  State<AddNameScreen> createState() => _AddNameScreenState();
}

class _AddNameScreenState extends State<AddNameScreen> {
  final firstNameController = TextEditingController();
  final LastNameController = TextEditingController();
  final locationController = TextEditingController();
  final dOBController = TextEditingController();
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final tehilimController = TextEditingController();
  final tagController = TextEditingController();
  final notesController = TextEditingController();
  final educationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              InfoCard(
                isExpanded: true,
                title: 'Basic Info',
                leadingIcon: const Icon(Icons.info_outline),
                cardWidgets: [
                  InfoCardData(
                    infoCardWidgets: [
                      CustomTextField(
                        controller: firstNameController,
                        labelText: 'First Name',
                      ),
                      CustomTextField(
                        controller: LastNameController,
                        labelText: 'Last Name',
                      ),
                      CustomTextField(
                        controller: locationController,
                        labelText: 'location',
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                  controller: dOBController, labelText: 'DOB'),
                            ),
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                  controller: ageController, labelText: 'Age'),
                            ),
                            Expanded(
                              flex: 1,
                              child: CustomTextField(
                                  controller: heightController,
                                  labelText: 'Height'),
                            )
                          ],
                        ),
                      ),
                      CustomTextField(
                        controller: phoneNumberController,
                        labelText: 'Phone Number',
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 12,
                        ),
                      ),
                      CustomTextField(
                        controller: emailController,
                        labelText: 'Email Address',
                        icon: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 12,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              InfoCard(
                isExpanded: false,
                title: 'Tags',
                leadingIcon: Icon(Icons.local_offer_outlined),
                cardWidgets: [
                  Card(
                    elevation: 0,
                    child: TextField(
                      controller: tagController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Tags'),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        //TODO: ADD LIST OF EXISTING TAGS
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Palette.primaryBlue,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
              InfoCard(
                  isExpanded: false,
                  title: 'Notes',
                  leadingIcon: Icon(Icons.message_outlined),
                  cardWidgets: [
                    Card(
                      elevation: 0,
                      child: TextField(
                        controller: notesController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Notes'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          isDense: true,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextButton(
                              child: Text('save'),
                              //TODO: ADD BUTTON FUNCTION TO ADD NOTE TO LIST
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  padding: const EdgeInsets.all(2),
                                  visualDensity: VisualDensity.compact,
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
              InfoCard(
                  isExpanded: false,
                  title: 'Education',
                  leadingIcon: Icon(Icons.school_outlined),
                  cardWidgets: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      color: Colors.white,
                      child: Column(
                        children: [
                          InfoCardData(
                            infoCardWidgets: [
                              CustomTextField(
                                  controller: educationController,
                                  labelText: 'Yeshiva/School'),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CustomTextField(
                                          controller: educationController,
                                          labelText: 'Start Date'),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: CustomTextField(
                                          controller: educationController,
                                          labelText: 'End Date'),
                                    ),
                                    //TODO: ADD A BUTTON TO SHOW PRESENT
                                  ],
                                ),
                              ),
                              CustomTextField(
                                controller: educationController,
                                labelText: 'Previous School',
                                icon: IconButton(
                                  constraints: BoxConstraints(
                                    minHeight: 10,
                                    minWidth: 10,
                                  ),
                                  visualDensity: VisualDensity.compact,
                                  padding: EdgeInsets.all(4),
                                  icon: Icon(
                                    Icons.add_circle,
                                    size: 12,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                            bottomPadding: 3,
                          ),
                          InfoCardData(
                            infoCardWidgets: [
                              //TODO: ADD A DROPDOWN OF ALL SCHOOL LEVELS
                              CustomTextField(
                                controller: educationController,
                                labelText: 'Level of Schooling',
                                suffixIcon: DropdownButton(
                                  focusColor: Colors.amber,
                                  underline: Container(
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1.0,
                                            style: BorderStyle.none),
                                      ),
                                    ),
                                  ),
                                  iconSize: 10,
                                  items: const [],
                                  isDense: true,
                                  // padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Palette.primaryBlue,
                                    size: 15,
                                  ),
                                  elevation: 0,
                                  selectedItemBuilder: (BuildContext context) {
                                    List<DropdownMenuItem> listForDropDown = [];
                                    return listForDropDown;
                                  },
                                ),
                              )
                            ],
                            topPadding: 5,
                          ),
                        ],
                      ),
                    ),
                  ]),
              InfoCard(
                  isExpanded: false,
                  title: 'Family',
                  leadingIcon: Icon(Icons.people_outline),
                  cardWidgets: const []),
              InfoCard(
                  isExpanded: false,
                  title: 'Community',
                  leadingIcon: Icon(Icons.record_voice_over_outlined),
                  cardWidgets: const []),
            ],
          ),
        ),
      ),
    );
  }
}
