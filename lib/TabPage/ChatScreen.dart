import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:zero_hunger/widgets/FoodItem.dart';

class HealthCare extends StatelessWidget {
  const HealthCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health-Care'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[200],
                ),
                child: Text(
                  'Know your diet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/image6.jpg',
                width: 300,
                height: 300,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple[200],
                ),
                child: Text(
                  'Know your Nutrition',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber[200],
                ),
                child: Text(
                  'Fruite Nutrition',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FoodItem(
              name: 'Apple',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://vignette.wikia.nocookie.net/fruits-information/images/2/2b/Apple.jpg/revision/latest?cb=20180802112257",
            ),
            FoodItem(
              name: 'Banana',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://pamsdailydish.com/wp-content/uploads/2015/04/Bunch-Bananas-1.jpg",
            ),
            FoodItem(
              name: 'Guava',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.ihjv3h--sE_R9nTfaV1ACwHaE9?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Lemon',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.a75YGp3VRPC70wAJvnb5PQHaE8?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Peanut',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://heavy.com/wp-content/uploads/2017/09/gettyimages-81741042-e1505304988962.jpg?quality=65&strip=all",
            ),
            FoodItem(
              name: 'Watermelon',
              fat: '2%',
              acid: '40%',
              cal: '70%',
              protine: '20%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://cdn.lifehack.org/wp-content/uploads/2014/08/5427691534_d2eeab1207_o.jpg",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green[200],
                ),
                child: Text(
                  'Vegetables Nutrition',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FoodItem(
              name: 'Carrot',
              fat: '0.2%',
              acid: '40%',
              cal: '52%',
              protine: '0.9%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.CZkr0J3LeRsMafEnZZGpcAHaFj?w=232&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
            ),
            FoodItem(
              name: 'Potato',
              fat: '0.1%',
              acid: '40%',
              cal: '103%',
              protine: '1.6%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/R.02ca88bd719dbd59f7cb3a1936f4f2ca?rik=r5yBgVHrjETasg&riu=http%3a%2f%2fstatic.tumblr.com%2fc06d8e0928395746a63b9c5d3cb1ce66%2fsl9iajp%2fgxFmqk38z%2ftumblr_static_potato-equality.jpg&ehk=%2fdgXmOCcgvr%2b%2fFssv7%2bhWbDCcbsXWnHOl9RbmPIUkXI%3d&risl=&pid=ImgRaw&r=0",
            ),
            FoodItem(
              name: 'Beets',
              fat: '0.2%',
              acid: '40%',
              cal: '58.5%',
              protine: '1.6%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.6ddK3aNlZVHjYc29zXmUAQHaFS?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Cauliflower',
              fat: '0.3%',
              acid: '40%',
              cal: '27%',
              protine: '1.9%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.qbtfTieEpOA4y66SY0zvEAHaHa?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Tomatoes',
              fat: '9%',
              acid: '40%',
              cal: '32%',
              protine: '17.71%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.lxm7tErLCo_6LOfGII9okgHaE8?pid=ImgDet&rs=1",
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown[200],
                ),
                child: Text(
                  'Cooked-Food Nutrition',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FoodItem(
              name: 'Veg-Curry',
              fat: '11%',
              acid: '32%',
              cal: '52.45%',
              protine: '56%',
              water: '20%',
              sugar: '10%',
              url:
                  "https://th.bing.com/th/id/R.ac77f5f5c33dd2e091763eaf1e656324?rik=3cb8KQY%2bTZEQ0Q&riu=http%3a%2f%2flayersofhappiness.com%2fwp-content%2fuploads%2f2014%2f10%2fvegetable-curry-5.jpg&ehk=vlwXLE1uqiXc97po6fapw9CJTtGQ83BaXoqSlhBwxu0%3d&risl=&pid=ImgRaw&r=0",
            ),
            FoodItem(
              name: 'Dal',
              fat: '10.23%',
              acid: '35.56%',
              cal: '103%',
              protine: '78%',
              water: '23.10%',
              sugar: '0.5%',
              url:
                  "https://2.bp.blogspot.com/--UPrPnjnPuA/VQIeSJTPkrI/AAAAAAAAA7o/EIwrFpdQflM/s1600/IMG_3508.JPG",
            ),
            FoodItem(
              name: 'Soyabeen',
              fat: '11%',
              acid: '10%',
              cal: '58.57%',
              protine: '76.92%',
              water: '80%',
              sugar: '30%',
              url:
                  "https://th.bing.com/th/id/OIP.hpkQr1fr9anSf9yTcP2AGAHaEK?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Panner',
              fat: '15.67%',
              acid: '20%',
              cal: '70%',
              protine: '45%',
              water: '20%',
              sugar: '10%',
              url:
                  "https://th.bing.com/th/id/OIP.EAhnVpkgFn3xNEMGuAezPAHaE8?pid=ImgDet&rs=1",
            ),
            FoodItem(
              name: 'Meat',
              fat: '6.7%',
              acid: '0.4%',
              cal: '52%',
              protine: '70%',
              water: '10%',
              sugar: '5.2%',
              url:
                  "https://th.bing.com/th/id/OIP.ON8td6kw2fiDoP54W4lxGAHaEK?pid=ImgDet&rs=1",
            ),
          ],
        ),
      ),
    );
  }
}
