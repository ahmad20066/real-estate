import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/features/saves/widgets/saved_item_widget.dart';

class SavesPage extends StatelessWidget {
  const SavesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Items'),
        // centerTitle: true,
        actions: [
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Sort By',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return SavedItemWidget();
        },
      ),
    );
  }
}
