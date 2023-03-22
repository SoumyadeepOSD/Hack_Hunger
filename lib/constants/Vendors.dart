class Vendor {
  final String name;
  final String urlImage;
  final String price;
  final String food;

  const Vendor(
      {required this.name,
      required this.urlImage,
      required this.price,
      required this.food});
}

const allVendors = [
  Vendor(
      name: 'Potato',
      urlImage:
          "https://th.bing.com/th/id/OIP.AsqIvXGdvVn3yzoZNvTyygHaE7?pid=ImgDet&rs=1",
      price: '10',
      food: 'Kolkata'),
  Vendor(
      name: 'Tomato',
      urlImage:
          "https://th.bing.com/th/id/OIP.8cNWwvfJsvMkZzAbNLC58AHaGK?pid=ImgDet&rs=1",
      price: '20',
      food: 'Rajastan'),
];
