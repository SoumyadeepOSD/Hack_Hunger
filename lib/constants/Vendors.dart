class Vendor {
  final String name;
  final String urlImage;
  final String price;
  final String food;
  final String VendorMan;

  const Vendor(
      {required this.name,
      required this.urlImage,
      required this.price,
      required this.food,
      required this.VendorMan});
}

const allVendors = [
  Vendor(
    name: 'Potato',
    urlImage:
        "https://th.bing.com/th/id/OIP.AsqIvXGdvVn3yzoZNvTyygHaE7?pid=ImgDet&rs=1",
    price: '10',
    food: 'Kolkata',
    VendorMan: "Ramu",
  ),
  Vendor(
    name: 'Tomato',
    urlImage:
        "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
    price: '20',
    food: 'Rajastan',
    VendorMan: "Ramu",
  ),
  Vendor(
    name: 'Brinjal',
    urlImage:
        "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
    price: '20',
    food: 'Africa',
    VendorMan: "Ramu",
  ),
  Vendor(
    name: 'Lemon',
    urlImage:
        "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
    price: '20',
    food: 'Seria',
    VendorMan: "Ramu",
  ),
  Vendor(
    name: 'Cauliflower',
    urlImage:
        "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
    price: '20',
    food: 'Nijeria',
    VendorMan: "Ramu",
  ),
  Vendor(
    name: 'Bitter Gourd',
    urlImage:
        "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
    price: '20',
    food: 'London',
    VendorMan: "Ramu",
  ),
];
