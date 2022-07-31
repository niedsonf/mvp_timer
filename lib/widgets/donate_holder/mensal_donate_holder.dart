import 'package:flutter/material.dart';
import 'package:mvp_timer/widgets/donate_holder/mensal_donate_unit.dart';

class MensalDonateHolder extends StatelessWidget {
  const MensalDonateHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          children: [
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          children: [
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          children: [
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
            MensalDonateUnit(name: 'My Nickname', value: '10,00'),
          ],
        ),
      ],
    );
  }
}
