/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDrawerGen {
  const $AssetsDrawerGen();

  /// File path: assets/drawer/contact.svg
  String get contact => 'assets/drawer/contact.svg';

  /// File path: assets/drawer/dark_mode.svg
  String get darkMode => 'assets/drawer/dark_mode.svg';

  /// File path: assets/drawer/discord.svg
  String get discord => 'assets/drawer/discord.svg';

  /// File path: assets/drawer/edit_profile.svg
  String get editProfile => 'assets/drawer/edit_profile.svg';

  /// File path: assets/drawer/history.svg
  String get history => 'assets/drawer/history.svg';

  /// File path: assets/drawer/log_out.svg
  String get logOut => 'assets/drawer/log_out.svg';

  /// File path: assets/drawer/settings.svg
  String get settings => 'assets/drawer/settings.svg';

  /// File path: assets/drawer/share.svg
  String get share => 'assets/drawer/share.svg';

  /// File path: assets/drawer/store.svg
  String get store => 'assets/drawer/store.svg';

  /// File path: assets/drawer/support.svg
  String get support => 'assets/drawer/support.svg';

  /// File path: assets/drawer/upgrade_plan.svg
  String get upgradePlan => 'assets/drawer/upgrade_plan.svg';

  /// List of all assets
  List<String> get values => [
        contact,
        darkMode,
        discord,
        editProfile,
        history,
        logOut,
        settings,
        share,
        store,
        support,
        upgradePlan
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.png');

  /// File path: assets/images/chatgpt.png
  AssetGenImage get chatgpt => const AssetGenImage('assets/images/chatgpt.png');

  /// File path: assets/images/discord.png
  AssetGenImage get discord => const AssetGenImage('assets/images/discord.png');

  /// File path: assets/images/echogpt.png
  AssetGenImage get echogpt => const AssetGenImage('assets/images/echogpt.png');

  /// File path: assets/images/echologo.svg
  String get echologo => 'assets/images/echologo.svg';

  /// File path: assets/images/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/images/edit.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/geminiT.png
  AssetGenImage get geminiT => const AssetGenImage('assets/images/geminiT.png');

  /// File path: assets/images/github.png
  AssetGenImage get github => const AssetGenImage('assets/images/github.png');

  /// File path: assets/images/google.png
  AssetGenImage get google => const AssetGenImage('assets/images/google.png');

  /// File path: assets/images/mail.png
  AssetGenImage get mail => const AssetGenImage('assets/images/mail.png');

  /// File path: assets/images/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/images/plus.png');

  /// File path: assets/images/redrocket.png
  AssetGenImage get redrocket =>
      const AssetGenImage('assets/images/redrocket.png');

  /// File path: assets/images/stars.png
  AssetGenImage get stars => const AssetGenImage('assets/images/stars.png');

  /// File path: assets/images/whatsapp.png
  AssetGenImage get whatsapp =>
      const AssetGenImage('assets/images/whatsapp.png');

  /// List of all assets
  List<dynamic> get values => [
        apple,
        chatgpt,
        discord,
        echogpt,
        echologo,
        edit,
        facebook,
        geminiT,
        github,
        google,
        mail,
        plus,
        redrocket,
        stars,
        whatsapp
      ];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/404_error.svg
  String get a404Error => 'assets/logo/404_error.svg';

  /// File path: assets/logo/empty_data.svg
  String get emptyData => 'assets/logo/empty_data.svg';

  /// File path: assets/logo/logout.svg
  String get logout => 'assets/logo/logout.svg';

  /// List of all assets
  List<String> get values => [a404Error, emptyData, logout];
}

class Assets {
  Assets._();

  static const $AssetsDrawerGen drawer = $AssetsDrawerGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
