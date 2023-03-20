import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zero_hunger/SelfDonation.dart';
import 'components/network_utilitiy.dart';
import 'models/autocomplate_prediction.dart';
import 'models/place_auto_complate_response.dart';
import './components/location_list_tile.dart';
import 'constants.dart';

class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({Key? key}) : super(key: key);

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  List<AutocompletePrediction> placePredictions = [];

  void placeAutocomplete(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
      "input": query, //query parameter
      "key": apiKey, //make sure to add your api key
    });
    // its time to make the GET request
    String? response = await NetworkUtility.fetchUrl(uri);

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);

      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SelfDonation',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.help,
                color: Colors.white,
              )
            ],
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 4,
            thickness: 4,
            color: secondaryColor5LightTheme,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Form(
              child: TextFormField(
                onTapOutside: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                  hintText: "Veg/Non-Veg",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: TextFormField(
                onChanged: (value) {
                  placeAutocomplete(value);
                  print(value);
                },
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: "Search your location",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: SvgPicture.asset(
                      "assets/icons/location_pin.svg",
                      color: secondaryColor40LightTheme,
                    ),
                  ),
                ),
              ),
            ),
          ),

          //created own components for suggestion
          //Time to shoe the results
          //Let's Search
          Expanded(
            child: ListView.builder(
              itemCount: placePredictions.length,
              itemBuilder: (context, index) => LocationListTile(
                press: () {
                  print(placePredictions[index].description);
                },
                location: placePredictions[index].description!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
