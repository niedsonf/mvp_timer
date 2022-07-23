import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/widgets/custom_text.dart';

class CustomCheckbox extends StatefulWidget {
  final contentController;
  final MvPGroup group;
  final String text;
  CustomCheckbox(
      {Key? key,
      required this.contentController,
      required this.group,
      required this.text})
      : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    var content;
    switch (widget.group) {
      case MvPGroup.OW:
        content = widget.contentController.owShow;
        break;
      case MvPGroup.IN:
        content = widget.contentController.inShow;
        break;
      case MvPGroup.TH:
        content = widget.contentController.thShow;
        break;
      default:
    }
    ;
    return Obx(
      () => Row(
        children: [
          Checkbox(
              value: content.value,
              onChanged: (value) {
                content.value = value;
              }),
          CustomText(text: widget.text, color: darker)
        ],
      ),
    );
  }
}
