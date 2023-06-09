import 'package:electronics_e_commerce_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatefulWidget {
  Widget child;
  double? height;
  double? width;
  VoidCallback? onTap;

  CommonButton({required this.child, this.height, this.width, this.onTap, Key? key}) : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: widget.height ?? 30.h,
            width: widget.width ?? 40.h,
            transform: Matrix4.rotationZ(-0.13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.r),
                topRight: Radius.circular(17.r),
                bottomRight: Radius.circular(23.r),
                bottomLeft: Radius.circular(20.r),
              ),
              color: kDarkYellow,
            ),
            // child: Center(child: child),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.h, left: 5.w),
            child: widget.child,
          )
        ],
      ),
    );
  }
}
