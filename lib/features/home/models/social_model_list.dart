import 'package:conversational_english/gen/assets.gen.dart';
// import 'package:portfolio/constants/AppAssets/projectassets.dart';
import 'dart:html' as html;

class SocialMediaModel {
  String? title;
  Function()? onTap;
  String? icon;
  SocialMediaModel({this.onTap, this.title, this.icon});
}

List<SocialMediaModel> socialitems = [
  SocialMediaModel(
    title: 'GitHub',
    onTap: () {
      html.window.open("https://github.com/jahangircpi", "Github");
    },
    icon: Assets.images.group.path,
  ),
  SocialMediaModel(
    title: 'Facebook',
    onTap: () {
      html.window.open("https://www.facebook.com/Jahangircpi/", "Facebook");
    },
    icon: Assets.images.group.path,
  ),
  SocialMediaModel(
    title: 'Linkedin',
    onTap: () {
      html.window.open("https://www.linkedin.com/in/jahangir-alam-138907163/", "Linkedin");
    },
    icon: Assets.images.group.path,
  ),
  SocialMediaModel(
    title: 'Twitter',
    onTap: () {
      // html.window.open("https://twitter.com/jahangircpi/", "Twitter");
    },
    icon: Assets.images.group.path,
  ),
  SocialMediaModel(
    title: 'Instagram',
    onTap: () {
      html.window.open("https://www.instagram.com/jahangircpi/", "Instagram");
    },
    icon: Assets.images.group.path,
  ),
];
