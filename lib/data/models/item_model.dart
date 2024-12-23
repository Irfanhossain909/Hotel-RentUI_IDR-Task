class HouseRoom {
  final int? id;
  final String name;
  final String? oWnName;
  final String? description;
  final String? locationDuration;
  final String? price;
  final String? bathNum;
  final String? bedNum;
  final String image;
  final List<String>? imgList;

  HouseRoom({
    this.id,
    this.oWnName,
    required this.name,
    this.description,
    this.locationDuration,
    this.price,
    this.bathNum,
    this.bedNum,
    required this.image,
    this.imgList,
  });
}

List<HouseRoom> houseList = [
  HouseRoom(
    id: 1,
    name: "Dreamsville House",
    image: "assets/images/img4.jpg",
    oWnName: "Jl. Sultan Iskandar Muda",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "1.8 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 2,
    name: "Ascot House",
    image: "assets/images/img3.jpg",
    oWnName: "Jl. Jafar Hyder",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "7.9 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 3,
    name: "Orchad House",
    image: "assets/images/img2.jpg",
    oWnName: "Dr. Mahmuda Khanom",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "2.9 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 4,
    name: "The Hollies House",
    image: "assets/images/img1.jpg",
    oWnName: "Eng. Irfan hossain",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "4.3 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 5,
    name: "Dreamsville House",
    image: "assets/images/img4.jpg",
    oWnName: "Jl. Sultan Iskandar Muda",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "1.8 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 6,
    name: "Ascot House",
    image: "assets/images/img3.jpg",
    oWnName: "Jl. Jafar Hyder",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "7.9 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 7,
    name: "Orchad House",
    image: "assets/images/img2.jpg",
    oWnName: "Dr. Mahmuda Khanom",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "2.9 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
  HouseRoom(
    id: 8,
    name: "The Hollies House",
    image: "assets/images/img1.jpg",
    oWnName: "Eng. Irfan hossain",
    description:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    price: "Rp. 2.500.000.000 / Year",
    locationDuration: "4.3 km",
    bathNum: "2",
    bedNum: "5",
    imgList: [
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
      'assets/images/img1.jpg',
      'assets/images/img2.jpg',
      'assets/images/img3.jpg',
      'assets/images/img4.jpg',
    ],
  ),
];
