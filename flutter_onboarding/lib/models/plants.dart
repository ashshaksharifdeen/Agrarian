class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant({
    required this.plantId,
    required this.price,
    required this.category,
    required this.plantName,
    required this.size,
    required this.rating,
    required this.humidity,
    required this.temperature,
    required this.imageURL,
    required this.isFavorated,
    required this.decription,
    required this.isSelected,
  });

  //List of Plants data
  static List<Plant> plantList = [
    /*Plant(
        plantId: 0,
        price: 22,
        category: 'Indoor',
        plantName: 'Sanseviera',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: true,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Outdoor',
        plantName: 'Philodendron',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/plant-two.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'Indoor',
        plantName: 'Beach Daisy',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/plant-three.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'Outdoor',
        plantName: 'Big Bluestem',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'Recommended',
        plantName: 'Big Bluestem',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/plant-four.png',
        isFavorated: true,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'Outdoor',
        plantName: 'Meadow Sage',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/plant-five.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Garden',
        plantName: 'Plumbago',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/plant-six.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'Garden',
        plantName: 'Tritonia',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/plant-seven.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'Recommended',
        plantName: 'Tritonia',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/plant-eight.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),*/
    Plant(
        plantId: 0,
        price: 46,
        category: 'Recommended',
        plantName: 'Leaf area index',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/leafarea.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 46,
        category: 'Recommended',
        plantName: 'NDI',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/nitrogen.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 46,
        category: 'Recommended',
        plantName: 'EXG',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/exg.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 46,
        category: 'Recommended',
        plantName: 'Leaf nitrogen concentration',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/LNC.png',
        isFavorated: false,
        decription:
            'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];
  //List of Plants data

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}

class Mentor {
  final int mentId;
  final String mentname;
  final String mentdescription;
  final String position;
  final String work_experience;
  final String Specialized;
  final String imageURL;
  bool isFavorated;
  bool isSelected;

  Mentor(
      {required this.mentId,
      required this.mentname,
      required this.mentdescription,
      required this.position,
      required this.work_experience,
      required this.Specialized,
      required this.imageURL,
      required this.isFavorated,
      required this.isSelected});
  static List<Mentor> mentorList = [
    Mentor(
        mentId: 0,
        mentname: 'Ashshak',
        mentdescription:
            'Pest Management Specialist will be responsible for researching and developing effective pest management strategies for rice cultivation. The specialist will work closely with farmers, extension agents, and researchers to reduce crop losses caused by pests and diseases, while ensuring environmental sustainability and the safety of the farmers and consumers.',
        position: 'Pest Management Specialist',
        work_experience:
            'Minimum of 5 years of experience in agronomy, plant pathology, entomology, or a related field, with a focus on rice cultivation.Experience in developing and implementing integrated pest management (IPM) strategies for rice crops.Proven track record of working with farmers, extension agents, and research institutions.',
        Specialized:
            'Expertise in identifying, monitoring, and managing pests and diseases affecting rice crops.Development of environmentally sustainable and economically viable pest management strategies.Training and capacity building for farmers and extension agents on best practices for pest management in rice cultivation.',
        imageURL: 'assets/images/ashshak.jpg',
        isFavorated: false,
        isSelected: false),
    Mentor(
        mentId: 1,
        mentname: 'Arshad',
        mentdescription:
            'The Rice Agronomist - Water Management Expert will focus on researching, developing, and promoting water-saving techniques and irrigation systems to improve rice production efficiency while reducing the environmental impact of rice cultivation. The expert will collaborate with farmers, irrigation engineers, and policymakers to optimize water use in rice farming.',
        position: 'Water Management Expert',
        work_experience:
            'At least 5 years of experience in agronomy, irrigation management, or a related field, focusing on rice cultivation.Demonstrated experience in developing and implementing water-saving techniques and irrigation systems for rice production.Proven ability to work with various stakeholders, including farmers, engineers, and policymakers.',
        Specialized:
            'Expertise in designing and promoting water-saving techniques and irrigation systems for rice cultivation.Development of water management strategies to improve rice production efficiency and reduce environmental impact.Capacity building for farmers, extension agents, and policymakers on best practices for water management in rice farming',
        imageURL: 'assets/images/Arshad.jpg',
        isFavorated: false,
        isSelected: false),
    Mentor(
        mentId: 2,
        mentname: 'Aneek',
        mentdescription:
            'The Rice Agronomist - Soil Fertility and Nutrient Management Specialist will be responsible for researching and developing innovative strategies to optimize soil fertility and nutrient management for rice cultivation. This specialist will work with farmers, extension agents, and research institutions to ensure that rice crops receive adequate nutrients while minimizing the negative impact of fertilizers on the environment',
        position: 'Soil Fertility and Nutrient Management Specialist',
        work_experience:
            'Minimum of 5 years of experience in agronomy, soil science, or a related field, with a focus on rice cultivation.Experience in developing and implementing soil fertility and nutrient management strategies for rice crops.Track record of working with farmers, extension agents, and research institutions.',
        Specialized:
            'Expertise in assessing and optimizing soil fertility and nutrient management in rice cultivation.Development of innovative strategies to ensure rice crops receive adequate nutrients while minimizing environmental impact.Training and capacity building for farmers and extension agents on best practices for soil fertility and nutrient management in rice farming.',
        imageURL: 'assets/images/Arshad.jpg',
        isFavorated: false,
        isSelected: false),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
