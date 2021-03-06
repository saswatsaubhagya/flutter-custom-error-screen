import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/utils/colors.dart';
import 'package:flutter_custom_error_screen/utils/sizes.dart';
import 'package:flutter_custom_error_screen/utils/text_styles.dart';

class AppButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final BorderRadius _borderRadius = BorderRadius.all(
    Radius.circular(Sizes.s5),
  );

  final bool enabled;

  AppButton({
    @required this.onTap,
    @required this.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: enabled ? onTap : () {},
      child: Container(
        padding: EdgeInsets.all(Sizes.s15),
        child: Center(
          child: Text(
            text,
            style: TextStyles.buttonText,
          ),
        ),
        decoration: BoxDecoration(
          color: enabled ? AppColors.primary : Colors.grey,
          borderRadius: _borderRadius,
        ),
      ),
    );
  }
}
