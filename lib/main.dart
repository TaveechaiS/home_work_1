import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return buildRecipeCard(Recipe.samples[index]);
            },
            itemCount: Recipe.samples.length
          ),
        ),
      ),
    );
  }
  
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          Text(recipe.imgLabel),
        ],
      ),
    );
  }
}

class   Recipe {
  String imgLabel;
  String imageUrl;

  Recipe(this.imgLabel,this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Sweatshirt', 'assets/images/Sweatshirt_17_11zon.webp'),
    Recipe('DRY-EX T-Shirt | Printed', 'assets/images/DRY-EX T-Shirt_16_11zon.webp'),
    Recipe('DRY-EX Crew Neck T-Shirt | Patterned', 'assets/images/DRY-EX Crew Neck T-Shirt_15_11zon.webp'),
    Recipe('MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) | Monsters, Inc.',  'assets/images/MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) Monsters, Inc._14_11zon.webp'),
    Recipe('MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) | Mickey Mouse', 'assets/images/MAGIC FOR ALL TIMELESS UT (Short Sleeve Graphic T-Shirt) Mickey Mouse_13_11zon.webp'),

    Recipe('Fluffy Yarn Fleece Full-Zip Jacket', 'assets/images/Fluffy Yarn Fleece Full-Zip Jacket_12_11zon.webp'),
    Recipe('PUFFTECH Jacket | Pocketable', 'assets/images/PUFFTECH Jacket  Pocketable_11_11zon.webp'),
    Recipe('HEATTECH Lined Mittens | Souffle Yarn', 'assets/images/HEATTECH Lined Mittens Souffle Yarn_10_11zon.webp'),
    Recipe('HEATTECH Ribbed Beanie | Marled Yarn', 'assets/images/HEATTECH Ribbed Beanie Marled Yarn_9_11zon.webp'),
    Recipe('HEATTECH Scarf | Patterned', 'assets/images/HEATTECH Scarf Patterned_8_11zon.webp'),

    Recipe('Ultra Stretch Dress | Sleeveless', 'assets/images/Ultra Stretch Dress Sleeveless_7_11zon.webp'),
    Recipe('Drapey Denim Skort', 'assets/images/Drapey Denim Skort_6_11zon.webp'),
    Recipe('Linen Cotton Shorts | Striped', 'assets/images/Linen Cotton Shorts Striped_5_11zon.webp'),
    Recipe('Linen Blend Easy Pants | Can Be Set Up With Tops', 'assets/images/Linen Blend Easy Pants Can Be Set Up With Tops_4_11zon.webp'),
    Recipe('Linen Blend Easy Pants | Striped', 'assets/images/Linen Blend Easy Pants Striped_3_11zon.webp'),


  ];
}
