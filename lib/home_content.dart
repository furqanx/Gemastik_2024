import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Text('Selected Index: $_selectedIndex'),
            _buildCalorieBoardCard(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                  _buildFoodRecomendationCard(),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                  _buildIngredientsRecomendationCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildCalorieBoardCard() {
    return const Card(
      child: SizedBox(
        width: 300,
        height: 150,
        child: Column(
          children: <Widget>[
            Text('0 of 1850 cal'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Protein: 0%'),
                Text('Lemak : 0%'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Karbohidrat: 0%'),
                Text('Serat: 0%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card _buildFoodRecomendationCard() {
    return Card(
      child: SizedBox(
        width: 200,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/salad_image_1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Salad'),
                Text('4.8'),
              ],
            ),
            const Text('53 cal'),
          ],
        ),
      ),
    );
  }

  Card _buildIngredientsRecomendationCard() {
    return Card(
      child: SizedBox(
        width: 200,
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/ingredient_image_1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Dada ayam'),
                Text('4.9'),
              ],
            ),
            const Text('100 cal'),
          ],
        ),
      ),
    );
  }
}
