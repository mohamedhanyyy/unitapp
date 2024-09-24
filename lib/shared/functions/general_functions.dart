import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_version_plus/new_version_plus.dart';
import 'package:unit/services/navigation/navigation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/custom_button.dart';

class GeneralFunctions {
  static void advancedStatusCheck() async {
    // NewVersionPlus newVersion = NewVersionPlus(
    //   // iOSId: 'com.iewa.unit',
    //   // androidId: 'com.iewa.unitsandroid',
    // );
    final status = await NewVersionPlus().getVersionStatus();
    debugPrint(status?.localVersion);
    debugPrint(status?.storeVersion);
    debugPrint('${status?.canUpdate}');

    if (status?.canUpdate == true && AppNavigation.context.mounted) {
      showAdaptiveDialog(
          barrierDismissible: false,
          context: AppNavigation.context,
          builder: (_) {
            return AlertDialog.adaptive(
              backgroundColor: Colors.white,
              title: Text(
                  '${'There is a new update'.tr()} ${status?.storeVersion}'),
              content: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 7),
                child: CustomElevatedButton(
                  buttonText: 'Update now',
                  onTap: () async {
                    if (Platform.isAndroid) {
                      await launchUrl(
                        Uri.parse(
                            'https://play.google.com/store/apps/details?id=com.iewa.unitsandroid'),
                        mode: LaunchMode.externalApplication,
                      );
                    } else if (Platform.isIOS) {
                      await launchUrl(
                        Uri.parse(
                            'https://apps.apple.com/eg/app/%D8%A3%D8%AE%D8%B7%D8%A8%D9%88%D8%B7-%D8%BA%D8%B3%D9%8A%D9%84-%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA/id6463797502'),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  fontColor: Colors.black,
                ),
              ),
            );
          });
    }
  }

  static Future<void> dialNumber({required String mobileNumber}) async {
    await FlutterPhoneDirectCaller.callNumber(mobileNumber);
  }

  static unFocusCursorRTL(TextEditingController controller) {
    if (controller.selection ==
        TextSelection.fromPosition(
            TextPosition(offset: controller.text.length - 1))) {
      controller.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length));
    }
  }

  static void hideKeyboard() {
    if (FocusManager.instance.primaryFocus?.hasFocus == true) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  static setPreferredOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static moveCameraPosition(
      {required LatLng latLng,
      required Completer<GoogleMapController> mapController}) async {
    final GoogleMapController controller = await mapController.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: latLng, zoom: 14)));
  }

  static ColorFilter getFilterColor(Color color) {
    return ColorFilter.mode(color, BlendMode.srcIn);
  }
}
