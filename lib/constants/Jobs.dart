class Job {
  final String title;
  final String urlImage;
  final String salary;
  final String location;

  const Job(
      {required this.title,
      required this.urlImage,
      required this.salary,
      required this.location});
}

const allJobs = [
  Job(
      title: 'Computer repairing job in kolkata',
      urlImage:
          "https://www.insurancejournal.com/app/uploads/2013/12/Great-Job.jpg",
      salary: '10000',
      location: 'Remote'),
  Job(
      title: 'Plumbing service near karunamoyee',
      urlImage:
          "https://www.insurancejournal.com/app/uploads/2013/12/Great-Job.jpg",
      salary: '10000',
      location: 'Remote'),
];
