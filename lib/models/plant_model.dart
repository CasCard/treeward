class Plant{
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String size;
  final String description;

  Plant({
    this.imageUrl,
    this.name,
    this.category,
    this.description,
    this.price,
    this.size
});
}
final List<Plant> plants=[
  Plant(
    imageUrl: 'assets/images/plant0.png',
    name: 'Aloe Vera',
    category: 'Outdoor',
    price: 25,
    size: 'Small',
    description:
    'Aloe vera is a succulent plant species of the genus Aloe. It\'s medicinal uses and air purifying ability make it an awesome plant.',
  ),
  Plant(
    imageUrl: 'assets/images/plant1.png',
    name: 'Grandiflora',
    category: 'Indoor',
    price: 30,
    size: 'Medium',
    description:
        'It requires almost no attention and spreads itself very easily. In places with old architecture it can grow between the stones of the road or sidewalk.',
  ),
  Plant(
    imageUrl: 'assets/images/plant2.png',
    name: 'Areca Palm',
    category: 'New Arrival',
    price: 42,
    size: 'Large',
    description:
    'Areca palm is also known as golden palm, butterfly palm, and yellow palm and is native to south India and the Philippines. Areca palm can be used as an indoor house plant and required special attention.',
  ),
  Plant(
    imageUrl: 'assets/images/plant3.png',
    name: 'Snake Plant',
    category: 'New Arrival',
    price: 42,
    size: 'Large',
    description:
    'It’s easy to care for, and will grow nicely in a sunny window or a spot that only has indirect light. You don’t even have to be all that regular watering it as it will do fine in dry soil.\n In fact, over-watering is one of the big problems with snake plants. Snake plants are an excellent choice for any room in the house and will help remove formaldehyde from your air.',
  ),
  Plant(
    imageUrl: 'assets/images/plant4.png',
    name: 'Tulsi',
    category: 'New Arrival',
    price: 42,
    size: 'Large',
    description:
    'Mostly known as Holy Basil. It is native to India and mostly cultivated in south-eastern Asia. It is commonly used for treating Asthma, cold, sore throat, high bp and cholesterol.Also used as a stress relaxant and inflammation controller.',
  ),

];