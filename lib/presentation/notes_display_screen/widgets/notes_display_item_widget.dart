import 'package:flutter/material.dart';
import 'package:travelouge/core/app_export.dart';

// ignore: must_be_immutable
class NotesDisplayItemWidget extends StatelessWidget {
  NotesDisplayItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 3,
              ),
              child: Text(
                "Welcome to trave...",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtKoulenRegular20,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 3,
              ),
              child: Text(
                "01/09/2023",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtKoulenRegular12,
              ),
            ),
            Container(
              width: getHorizontalSize(
                151,
              ),
              child: Text(
                "Travelouge is a great way\nto capture inspiration and\norganize your travel \ndestinations. You can also\ntry out more quick ways\nto remember things with\nTravelouge. ",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtSourceSansProRegular14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
