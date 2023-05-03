import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:travelogue_app/core/app_export.dart';

// ignore: must_be_immutable
class NotesDisplayItemWidget extends StatelessWidget {
  NotesDisplayItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 7,
        top: 3,
        right: 7,
        bottom: 3,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgNote6,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtKoulenRegular20,
          ),
          Text(
            "",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtKoulenRegular12,
          ),
          Container(
            width: getHorizontalSize(
              87,
            ),
            margin: getMargin(
              left: 5,
              bottom: 24,
            ),
            child: Text(
              "",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtSourceSansProRegular14,
            ),
          ),
        ],
      ),
    );
  }
}
