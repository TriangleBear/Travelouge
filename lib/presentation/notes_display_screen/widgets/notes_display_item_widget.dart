import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:travelogue_app/core/app_export.dart';

  Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
            Text(doc["noteTitle"], style: AppStyle.txtBoogalooRegular25,
            ),
            Text(doc["noteDate"],
              style:AppStyle.hintBoogalooRegular28,
            ),
            Text(doc["noteContent"],
              style:TextStyle(
                fontWeight: doc["isNoteBold"]?FontWeight.bold : FontWeight.normal,
                fontSize: doc["noteFontSize"],
              ),
            ),
          ],
        ),
      ),
    );
  }
