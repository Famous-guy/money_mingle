import 'package:flutter/material.dart';

extension SizeExtention on num {
  Widget get ve {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget get he {
    return SizedBox(
      width: toDouble(),
    );
  }
}
