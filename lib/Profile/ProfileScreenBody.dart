import 'package:flutter/material.dart';

import 'ProfileOption.dart';
import 'ProfileOptionRow.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileOptionRow(
                option: ProfileOption(title: "name"),
                displayName: "İsim - Soyisim",
              ),
              ProfileOptionRow(
                option: ProfileOption(title: "adres"),
                displayName: "Adres",
              ),
              ProfileOptionRow(
                option: ProfileOption(title: "aile_üyesi_telefon"),
                displayName: "Aile Üyesi Telefon",
              ),
              ProfileOptionRow(
                option: ProfileOption(title: "sık_kullanılan_ilaçlar"),
                displayName: "Sık Kullanılan İlaçlar",
              ),
              ProfileOptionRow(
                option: ProfileOption(title: "mevcut_hastalıklar"),
                displayName: "Mevcut Hastalıklar",
              ),
              ProfileOptionRow(
                option: ProfileOption(title: "gender"),
                displayName: "Cinsiyet",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
