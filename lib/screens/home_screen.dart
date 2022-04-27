import 'package:dribbble_ui_1/datas/dummy_category.dart';
import 'package:dribbble_ui_1/utils/colors.dart';
import 'package:dribbble_ui_1/widgets/category_item.dart';
import 'package:dribbble_ui_1/widgets/main_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 35,
        ),
        title: Text(
          "Categories",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Choose a Category &\n Find The Specialists",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          Expanded(
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 110,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              children: dummyCategory
                  .map(
                    (category) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 0,
                      ),
                      child: CategoryItem(
                        iconUrl: category.icon,
                        title: category.title,
                        color: category.color,
                        onTap: () =>
                            print("Category clicked: ${category.title}"),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          MainButton(
            onTap: () {},
            buttonTitle: "Continue",
          ),
        ],
      ),
    );
  }
}
