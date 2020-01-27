class TravelModel {
  final int id;
  final String name;
  final String urlimage;
  final String country;
  final String rating;
  final String title;
  final String description;
  TravelModel(
      {this.id,
      this.name,
      this.urlimage,
      this.country,
      this.rating,
      this.title,
      this.description});
}

List<TravelModel> dummyPopularDestination = [
  TravelModel(
      id: 1,
      name: "London",
      country: "England",
      urlimage: "assets/images/london.jpg",
      description: "eum et est occaecati"),
  TravelModel(
      id: 2,
      name: "Manhattan",
      country: "USA",
      urlimage: "assets/images/manhattan.jpg",
      description:
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"),
  TravelModel(
      id: 3,
      name: "Pontianak",
      country: "Indonesia",
      urlimage: "assets/images/pontianak.png",
      description: "nesciunt quas odio"),
  TravelModel(
      id: 4,
      name: "Merlion Park",
      country: "Singapore",
      urlimage: "assets/images/singapore.jpg",
      description: "dolorem eum magni eos aperiam quia"),
  TravelModel(
      id: 5,
      name: "Tokyo",
      country: "Japan",
      urlimage: "assets/images/tokyo.jpg",
      description: "magnam facilis autem"),
];

List<TravelModel> dummyVerticalImage = [
  TravelModel(
    id: 1,
    name: "Dubai",
    country: "Uni Emirat Arab",
    urlimage: "assets/images/dubaivertical.jpg",
    title:
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    description:
        "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto",
  ),
  TravelModel(
    id: 2,
    name: "Magelang",
    country: "Indonesia",
    urlimage: "assets/images/indonesiavertical.jpg",
    title: "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    description:
        "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla",
  ),
  TravelModel(
    id: 3,
    name: "London",
    country: "England",
    urlimage: "assets/images/londonvertical.jpg",
    title: "ea molestias quasi exercitationem repellat qui ipsa sit au",
    description:
        "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut",
  ),
  TravelModel(
    id: 4,
    name: "Long Angeles",
    country: "USA",
    urlimage: "assets/images/losangelesvertical.png",
    title: "eum et est occaecati",
    description:
        "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit",
  ),
  TravelModel(
    id: 5,
    name: "Kuala Lumpur",
    country: "Malaysia",
    urlimage: "assets/images/malaysiavertical.jpg",
    title: "nesciunt quas odio",
    description:
        "repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque",
  ),
];
