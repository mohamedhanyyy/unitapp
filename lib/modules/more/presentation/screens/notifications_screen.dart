import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(double.infinity, 46),
            child: CustomAppbar('الإشعارات')),
        body: ListView.builder(itemBuilder: (context,index){
          return

            ;
        },
        itemCount: 5,
          physics: ClampingScrollPhysics(),
        ),
      ),
    );
  }
}
