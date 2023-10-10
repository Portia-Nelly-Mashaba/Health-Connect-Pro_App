class SearchDoctor {
  final String? image, name, speciality, time, hospitalName;

  SearchDoctor(
      {this.image, this.name, this.speciality, this.time, this.hospitalName});
}

List<SearchDoctor> demo_search_doctors = [
  SearchDoctor(
    image: "assets/images/search_doc_1.png",
    name: "Dr. Sarah Louw",
    speciality: "Carddiologist (University of Rhodes)",
    time: "12.00pm - 4.00pm",
    hospitalName: "Edenvale",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_2.png",
    name: "Dr. Zein Stevens",
    speciality: "Carddiologist (University of Pretoria)",
    time: "8.00pm - 11.00pm",
    hospitalName: "Johannesburg Clinic",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_3.png",
    name: "Dr. Pretty Rams",
    speciality: "Carddiologist (Wits)",
    time: "3.00pm - 5.00pm",
    hospitalName: "Johannesburg Clinic",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_4.png",
    name: "Dr. Nathan Phillips",
    speciality: "Carddiologist (Wits)",
    time: "12.00pm - 4.00pm",
    hospitalName: "Durban JanS",
  ),
];
