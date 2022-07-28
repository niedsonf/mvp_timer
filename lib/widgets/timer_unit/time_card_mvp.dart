import 'package:flutter/material.dart';
import 'package:mvp_timer/constants/mvp_database.dart';
import 'package:mvp_timer/constants/style.dart';
import 'package:mvp_timer/helpers/mask.dart';
import 'package:mvp_timer/widgets/custom_text.dart';
import 'package:mvp_timer/widgets/element_text.dart';
import 'package:mvp_timer/widgets/mvp_showcase/mvp_showcase.dart';

class TimeCardMvP extends StatefulWidget {
  final MvP mvp;

  const TimeCardMvP({Key? key, required this.mvp}) : super(key: key);

  @override
  State<TimeCardMvP> createState() => _TimeCardMvPState();
}

class _TimeCardMvPState extends State<TimeCardMvP> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(10))),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) =>
                  MvPShowcase(mvp: widget.mvp, tag: widget.mvp.id)))),
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.7, 0.7],
                  colors: [darkBlue, light],
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomStart)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomText(
                            text: widget.mvp.name,
                            size: 16,
                            tAlign: TextAlign.center),
                        CustomText(
                          text: '❤HP ${applyHPMask(widget.mvp.hp)}',
                          color: Colors.red,
                          size: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Image.network(widget.mvp.gifUrl, width: 90, height: 90),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.mvp.element.widget,
                    const SizedBox(height: 20),
                    widget.mvp.race.widget,
                    const SizedBox(height: 20),
                    widget.mvp.size.widget,
                    const SizedBox(height: 20),
                    Visibility(
                      visible: widget.mvp.greenAura,
                      child: ElementText(
                          text: 'AURA VERDE',
                          bgColor: Colors.green,
                          textColor: light),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
