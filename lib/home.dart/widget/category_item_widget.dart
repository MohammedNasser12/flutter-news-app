import 'package:flutter/material.dart';
import 'package:news_app/model/category_data.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryData categoryData;
  int index;
  void Function(CategoryData) onClickedCategory;
  CategoryItemWidget(
      {super.key,
      required this.categoryData,
      required this.index,
      required this.onClickedCategory});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          onClickedCategory(categoryData);
        },
        child: Container(
            decoration: BoxDecoration(
              color: categoryData.categoryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: (index % 2 == 0)
                      ? Radius.circular(30)
                      : Radius.circular(0),
                  topRight: Radius.circular(30),
                  bottomRight: (index % 2 == 0)
                      ? Radius.circular(0)
                      : Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(child: Image.asset(categoryData.categoryImage)),
                  Text(
                    categoryData.categoryName,
                    style: theme.textTheme.titleMedium,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
