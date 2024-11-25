import 'package:e_commerce/features/personalization/screens/profile/widgets/contents/account_body.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/contents/account_header.dart';
import 'package:flutter/material.dart';
import '../../../../utils/helpers/helper.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDarkMode = FHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                /// Header
                AccountHeader(isDarkMode: isDarkMode),

                /// Body
                AccountBody(isDarkMode: isDarkMode)
              ]
          ),
        ),
    );
  }
}