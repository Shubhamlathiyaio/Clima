import 'package:clima/configs/space/edge.dart';
import 'package:clima/configs/space/gap.dart';
import 'package:clima/presentation/components/bg.dart';
import 'package:clima/presentation/components/input_field/beautiful_field.dart';
import 'package:clima/presentation/home/widgets/location_button.dart';
import 'package:flutter/material.dart';

class SearchComponet extends StatelessWidget {
  const SearchComponet({super.key});

  @override
  Widget build(BuildContext context) {
    return Bg(
      child: Padding(
        padding: edge.all16,
        child: Row(children: [BeautifulField(), gap.w12, LocationButton()]),
      ),
    );
  }
}
