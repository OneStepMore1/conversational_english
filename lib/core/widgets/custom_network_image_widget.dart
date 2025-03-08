import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../util/constants/default_values.dart';
import '../../util/constants/dimension_theme.dart';

class WImageNetwork extends StatelessWidget {
  final String? imagePath;
  final String? errorImage;
  final double? height, width;
  final BoxFit? fit;
  final bool? isCircular;
  final bool? isSVG;

  const WImageNetwork({
    super.key,
    this.imagePath,
    this.errorImage,
    this.height,
    this.width,
    this.fit,
    this.isCircular,
    this.isSVG = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isSVG == true) {
      return FutureBuilder(
        future: _checkSvgExists(imagePath ?? PDefaultValues.noImage),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError || snapshot.data == false) {
            return Image.network(
              errorImage ?? PDefaultValues.noImage,
              height: height ?? PTheme.imageDefaultX,
              width: width ?? PTheme.imageDefaultX,
              fit: fit ?? BoxFit.contain,
            );
          }
          return SvgPicture.network(
            imagePath ?? PDefaultValues.noImage,
            height: height ?? PTheme.imageDefaultX,
            width: width ?? PTheme.imageDefaultX,
            fit: fit ?? BoxFit.contain,
          );
        },
      );
    }
    return isCircular == true ? _buildCircularImage() : _buildNetworkImage();
  }

  Future<bool> _checkSvgExists(String url) async {
    try {
      final response = Uri.parse(url).resolveUri(Uri()).scheme == "http" || Uri.parse(url).scheme == "https"
          ? await NetworkAssetBundle(Uri.parse(url)).load(url)
          : null;
      return response != null;
    } catch (e) {
      return false;
    }
  }

  Widget _buildCircularImage() {
    return Container(
      height: height ?? PTheme.imageDefaultX,
      width: width ?? PTheme.imageDefaultX,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imagePath ?? PDefaultValues.noImage),
          onError: (exception, stackTrace) {
            NetworkImage(errorImage ?? PDefaultValues.noImage);
          },
        ),
      ),
    );
  }

  Widget _buildNetworkImage() {
    return Image.network(
      imagePath ?? PDefaultValues.noImage,
      height: height ?? PTheme.imageDefaultX,
      width: width ?? PTheme.imageDefaultX,
      fit: fit,
      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Image.network(
          errorImage ?? PDefaultValues.noImage,
          height: height ?? PTheme.imageDefaultX,
          width: width ?? PTheme.imageDefaultX,
        );
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        );
      },
    );
  }
}
