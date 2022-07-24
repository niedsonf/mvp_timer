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
    Size size = MediaQuery.of(context).size;
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
    FocusNode checkboxFocus = FocusNode();
    FocusNode none = FocusNode();
    return Obx(
      () => InkWell(
        onTap: () {
          setState(() {
            content.value = !content.value;
          });
        },
        onHover: (value) {
          value
              ? FocusScope.of(context).requestFocus(checkboxFocus)
              : FocusScope.of(context).requestFocus(none);
        },
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    splashRadius: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusNode: checkboxFocus,
                    activeColor: blue,
                    value: content.value,
                    onChanged: (value) {
                      content.value = value;
                    }),
                CustomText(text: widget.text, color: darker),
              ],
            ),
            SizedBox(height: 0, width: size.width * 0.07),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: content.value ? size.width * 0.07 : 0,
              decoration: BoxDecoration(color: blue),
            )
          ],
        ),
      ),
    );
  }
}
