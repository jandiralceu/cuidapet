import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeScreenExtension on num {
  double get width => ScreenUtil().setWidth(this);
  double get height => ScreenUtil().setHeight(this);
  double get radius => ScreenUtil().radius(this);
  double get fontSize => ScreenUtil().setSp(this);
  double get screenWidth => ScreenUtil().screenWidth * this;
  double get screenHeight => ScreenUtil().screenHeight * this;
  double get statusBar => ScreenUtil().statusBarHeight * this;
}
