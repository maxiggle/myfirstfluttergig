/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsDevGen {
  const $AssetsDevGen();

  /// File path: assets/dev/brand_logo.png
  AssetGenImage get brandLogo =>
      const AssetGenImage('assets/dev/brand_logo.png');

  /// File path: assets/dev/favorite.svg
  SvgGenImage get favorite => const SvgGenImage('assets/dev/favorite.svg');

  /// File path: assets/dev/manager_avatar.png
  AssetGenImage get managerAvatar =>
      const AssetGenImage('assets/dev/manager_avatar.png');

  /// File path: assets/dev/towerimage.png
  AssetGenImage get towerimage =>
      const AssetGenImage('assets/dev/towerimage.png');

  /// File path: assets/dev/user_avatar.png
  AssetGenImage get userAvatar =>
      const AssetGenImage('assets/dev/user_avatar.png');

  /// List of all assets
  List<dynamic> get values =>
      [brandLogo, favorite, managerAvatar, towerimage, userAvatar];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back_button.svg
  SvgGenImage get backButton =>
      const SvgGenImage('assets/icons/back_button.svg');

  /// File path: assets/icons/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/icons/camera.svg');

  /// File path: assets/icons/change_language.svg
  SvgGenImage get changeLanguage =>
      const SvgGenImage('assets/icons/change_language.svg');

  /// File path: assets/icons/chat_avatar.svg
  SvgGenImage get chatAvatar =>
      const SvgGenImage('assets/icons/chat_avatar.svg');

  /// File path: assets/icons/chatbox.svg
  SvgGenImage get chatbox => const SvgGenImage('assets/icons/chatbox.svg');

  /// File path: assets/icons/coins.svg
  SvgGenImage get coins => const SvgGenImage('assets/icons/coins.svg');

  /// File path: assets/icons/content.svg
  SvgGenImage get content => const SvgGenImage('assets/icons/content.svg');

  /// File path: assets/icons/hashtag.svg
  SvgGenImage get hashtag => const SvgGenImage('assets/icons/hashtag.svg');

  /// File path: assets/icons/mail_closed.svg
  SvgGenImage get mailClosed =>
      const SvgGenImage('assets/icons/mail_closed.svg');

  /// File path: assets/icons/mail_opened.svg
  SvgGenImage get mailOpened =>
      const SvgGenImage('assets/icons/mail_opened.svg');

  /// File path: assets/icons/message.svg
  SvgGenImage get message => const SvgGenImage('assets/icons/message.svg');

  /// File path: assets/icons/msg_status.svg
  SvgGenImage get msgStatus => const SvgGenImage('assets/icons/msg_status.svg');

  /// File path: assets/icons/msg_status_receiver.svg
  SvgGenImage get msgStatusReceiver =>
      const SvgGenImage('assets/icons/msg_status_receiver.svg');

  /// File path: assets/icons/new_message.svg
  SvgGenImage get newMessage =>
      const SvgGenImage('assets/icons/new_message.svg');

  /// File path: assets/icons/send.svg
  SvgGenImage get send => const SvgGenImage('assets/icons/send.svg');

  /// File path: assets/icons/show_message_is_read.svg
  SvgGenImage get showMessageIsRead =>
      const SvgGenImage('assets/icons/show_message_is_read.svg');

  /// File path: assets/icons/tasks.svg
  SvgGenImage get tasks => const SvgGenImage('assets/icons/tasks.svg');

  /// File path: assets/icons/teamtalk.svg
  SvgGenImage get teamtalk => const SvgGenImage('assets/icons/teamtalk.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        backButton,
        camera,
        changeLanguage,
        chatAvatar,
        chatbox,
        coins,
        content,
        hashtag,
        mailClosed,
        mailOpened,
        message,
        msgStatus,
        msgStatusReceiver,
        newMessage,
        send,
        showMessageIsRead,
        tasks,
        teamtalk,
        user
      ];
}

class Assets {
  Assets._();

  static const $AssetsDevGen dev = $AssetsDevGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
