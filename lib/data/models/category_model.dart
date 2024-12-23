class CategoryList {
  final String name;
  final int id;

  CategoryList( {required this.id,required this.name});
}

// Static categories list
List<CategoryList> categoriesList = [
  CategoryList(name: 'House', id: 1),
  CategoryList(name: 'Apartment', id: 2),
  CategoryList(name: 'Hotel', id: 3),
  CategoryList(name: 'Villa', id: 4),
  CategoryList(name: 'Cottage', id: 5),
];
