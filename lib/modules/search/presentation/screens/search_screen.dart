import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:unit/core/resources/colors.dart';
import 'package:unit/core/resources/styles.dart';
import 'package:unit/shared/widgets/custom_text_field.dart';

import '../../../../core/resources/icons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final mapController = Completer<GoogleMapController>();
  final controller = TextEditingController();
  int selectedCatIndex = 0;
  final catList = ['Dublex', 'Homes', 'Villas', 'Town house'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.menuHome),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 5, end: 10),
                          child: Text(
                            "menu".tr(),
                            style: lightGrey12W400,
                          ),
                        ),
                        Flexible(
                            child: CustomTextField(
                          fillColor: AppColors.greyTextField,
                          hintFontSize: 11,
                          hintColor: AppColors.greyProfileText,
                          borderRadius: 20,
                          controller: controller,
                          hintText: 'City, property type, project name',
                          prefixIcon: AppIcons.homeSearch,
                        ))
                      ],
                    ),
                  ),
                  StatefulBuilder(builder: (context, setState) {
                    return Container(
                      margin: const EdgeInsets.only(top: 7),
                      height: 38,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: catList.map((e) {
                          return GestureDetector(
                            onTap: () {
                              selectedCatIndex = catList.indexOf(e);
                              setState(() {});
                            },
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                width: 105,
                                decoration: BoxDecoration(
                                    color:
                                        catList.elementAt(selectedCatIndex) == e
                                            ? AppColors.lightGreenColor
                                            : AppColors.greyTextField,
                                    borderRadius: BorderRadius.circular(34),
                                    border: Border.all(
                                        color: AppColors.greyTextField)),
                                child: Center(
                                    child: Text(
                                  e.tr(),
                                  style: TextStyle(
                                      color:
                                          catList.elementAt(selectedCatIndex) ==
                                                  e
                                              ? AppColors.whiteColor
                                              : AppColors.blackColor),
                                ))),
                          );
                        }).toList(),
                      ),
                    );
                  })
                ],
              ),
            ),
            Expanded(
              child: GoogleMap(
                  mapType: MapType.satellite,
                  myLocationEnabled: true,
                  initialCameraPosition: const CameraPosition(
                      target: LatLng(24.774265, 46.738586), zoom: 15),
                  onMapCreated: (GoogleMapController controller) {
                    mapController.complete(controller);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
