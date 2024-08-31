import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/colors.dart';
import 'package:news_app/home.dart/widget/category_item_widget.dart';
import 'package:news_app/home.dart/widget/drawer_widget.dart';
import 'package:news_app/home.dart/widget/selected_category.dart';
import 'package:news_app/model/category_data.dart';
// import 'package:news_app/home.dart/item_widgets.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryData> categoryDataList = [
    CategoryData(
        categoryId: "sports",
        categoryName: "Sports",
        categoryColor: PalletsColors.red,
        categoryImage: "assets/images/sports.png"),
    CategoryData(
        categoryId: "general",
        categoryName: "Politics",
        categoryColor: PalletsColors.blue,
        categoryImage: "assets/images/Politics.png"),
    CategoryData(
        categoryId: "health",
        categoryName: "Health",
        categoryColor: PalletsColors.pink,
        categoryImage: "assets/images/health.png"),
    CategoryData(
        categoryId: "business",
        categoryName: "Business",
        categoryColor: PalletsColors.brown,
        categoryImage: "assets/images/bussines.png"),
    CategoryData(
        categoryId: "enviroment",
        categoryName: "Enviroment",
        categoryColor: PalletsColors.babyBlue,
        categoryImage: "assets/images/environment.png"),
    CategoryData(
        categoryId: "science",
        categoryName: "Science",
        categoryColor: PalletsColors.yellow,
        categoryImage: "assets/images/science.png"),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/patternbackground.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        
          title: Text(
            selectedCategory == null
                ? "News App"
                : selectedCategory!.categoryName,
            style: theme.textTheme.titleMedium,
          ),
          actions: [
            if (selectedCategory != null)
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
                iconSize: 40,
              )
          ],
          iconTheme: IconThemeData(color: Colors.white, size: 40),
        ),
        drawer: DrawerWidget(
          onTapCategoryDrawer: onTapCategoryDrawer,
        ),
        body: selectedCategory == null
            ? Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Pick your category \n of interest ",
                      style: theme.textTheme.titleMedium
                          ?.copyWith(color: Colors.black),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .88,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) => CategoryItemWidget(
                            categoryData: categoryDataList[index],
                            index: index,
                            onClickedCategory: onClickedCategory,
                          ),
                          itemCount: categoryDataList.length,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : SelectedCategory(categoryData: selectedCategory!),
      ),
    );
  }

  CategoryData? selectedCategory;

  void onClickedCategory(CategoryData categoryData) {
    setState(() {
      selectedCategory = categoryData;
    });
  }

  void onTapCategoryDrawer() {
    setState(() {
      selectedCategory = null;
      Navigator.pop(context);
    });
  }
}
