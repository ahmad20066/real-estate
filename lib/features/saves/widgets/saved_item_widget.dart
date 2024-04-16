import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';

class SavedItemWidget extends StatelessWidget {
  const SavedItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/d616/e907/07d3488e4a05604fcb7f1ecff8e7f7d6?Expires=1714348800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BYTVgYkDBkRqWvdZssvszBwcMdlU5oLCFSqA9A-LTDOEZz9reBjxWFUECBRC6aKoVdqtUkXov34W1nxLyhtulKPMfDVEazKDxD09UT1A4SnaVp22G3bDS5rePGvvUwgp7FtIyUZOqwQSgMzz0SAVpLACiJMNBSMmb3riv0GdvhoRrYGxsazyVHzvGWvUJLdWbQz657SLax0pmpDGBsXNwQnCBBfFcU59T6uYAexUVOhXxVdYOi-J-at55~-7XSCuPYxDNEIVa0IgeGWRIwg-bvwiWcsZbhpZxHco1ZzdMI-xxcvT8bZPJ6zbBPWPgpPHPcdVPO6P5BlfzIZvGRqcbA__',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 20.h,
                right: 20.h,
                child: Container(
                  height: 40.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark,
                          color: AppColors.primaryColor,
                          size: 18.sp,
                        )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Modren Family House',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 20.sp),
              ),
              Text(
                '\$3.225',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.primaryColor, fontSize: 24.sp),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 170.w,
                    child: Text(
                      '166 Old town road San France',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              Text(
                '\$3.225',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.red,
                    fontSize: 14.sp,
                    decoration: TextDecoration.lineThrough),
              )
            ],
          )
        ],
      ),
    );
  }
}
