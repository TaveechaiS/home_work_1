
import 'recipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.imgLabel), 
      ),
      body: Center(
        child: ListView( 
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl), height: 300), 
            const SizedBox(height: 14.0),

            Text(
              recipe.imgLabel,
              textAlign: TextAlign.center,
              style: GoogleFonts.chakraPetch(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10.0),

            Text(
              recipe.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.chakraPetch(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

