
import 'recipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.imgLabel),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(widget.recipe.imageUrl), height: 300), 
            const SizedBox(height: 14.0),
            Text(
              widget.recipe.imgLabel,
              textAlign: TextAlign.center,
              style: GoogleFonts.chakraPetch(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.recipe.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.chakraPetch(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20.0),
            
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  final displayproduct = ingredient.Product * _sliderValue;
                  final displayprice = ingredient.Price * _sliderValue;
                  
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      
                      '$displayproduct ตัว - ราคา $displayprice บาท',
                      style: GoogleFonts.chakraPetch(fontSize: 24.0,),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    '$_sliderValue Servings',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 1.0,
                    max: 10.0,
                    divisions: 9,
                    label: '$_sliderValue servings',
                    value: _sliderValue.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
