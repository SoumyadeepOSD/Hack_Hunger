class Job {
  final String title;
  final String urlImage;
  final String salary;
  final String location;
  final String desc;
  final String time;

  const Job(
      {required this.title,
      required this.urlImage,
      required this.salary,
      required this.location,
      required this.desc,
      required this.time});
}

const allJobs = [
  Job(
      title: 'Computer repairing job in kolkata',
      urlImage:
          "https://salarship.com/wp-content/uploads/2019/09/computer-repair-technician.jpg",
      salary: '10',
      location: 'Remote',
      desc:
          "Computer technitian responsibities include-A Computer Technician is a professional who is tasked with maintaining computer systems, troubleshooting errors, and repairing the organization's hardware. These professionals use their knowledge in networking and software applications to provide technical support for both employees and customers onsite or remotely.",
      time: '4-8hrs'),
  Job(
      title: 'Plumbing service near karunamoyee',
      urlImage:
          "https://www.rd.com/wp-content/uploads/2016/07/16-13-things-plumber.jpg",
      salary: '10',
      location: 'Remote',
      desc:
          "Plumber cleaner responsibities include-Plumbers fit and maintain water systems in buildings. This includes toilets, baths, showers, sinks, washing machines and dishwashers. They can also install central heating systems but need additional qualifications to work with gas boilers.",
      time: '4-8hrs'),
  Job(
      title: 'Electritian',
      urlImage:
          "https://th.bing.com/th/id/OIP.OMpb4paK4OUT0rz5lTP-kAHaC6?pid=ImgDet&rs=1",
      salary: '10',
      location: 'Remote',
      desc:
          "Electritian responsibities include-Executing plans of electrical wiring for well functioning lighting, intercom and other electrical systems. Installing electrical apparatus, fixtures and equipment for alarm and other systems. Installing safety and distribution components.",
      time: '4-8hrs'),
  Job(
      title: 'Labour',
      urlImage: "https://imgk.timesnownews.com/story/labour_pti.jpg",
      salary: '10',
      location: 'Remote',
      desc:
          "Labour responsibilities include-Depending on the industry, during the workday, a laborer may operate machinery, remove debris, build structures, perform landscaping work, use specialized equipment, lay asphalt or concrete, prepare surfaces for building, move or stack items, load and unload transport vessels, and do many other physical tasks.",
      time: '4-8hrs'),
  Job(
      title: 'Garbage cleaner',
      urlImage:
          "https://www.rd.com/wp-content/uploads/2020/03/GettyImages-1147902353-1-e1584637226628.jpg",
      salary: '10',
      location: 'Remote',
      desc:
          "Garbage cleaner responsibities include-Garbage collectors usually work in pairs, picking up and removing waste, recyclable goods,or yard debris from residential neighbourhoods, commercial business centres, and public parks.",
      time: '4-8hrs'),
  Job(
      title: 'Salesman',
      urlImage:
          "https://www.logolynx.com/images/logolynx/64/64f714fc6a8e833caad8de15f756d04b.png",
      salary: '10',
      location: 'Remote',
      desc:
          "Salesman responsibilities include-Selling products or services to customers, and representing the brand. This can include asking questions to pinpoint the best offerings, giving demos or presentations, and maintaining customer relationships. Reaching out to potential leads through a variety of channels, such as email, phone, text, and social media.",
      time: '4-8hrs'),
  Job(
      title: 'Barber',
      urlImage:
          "https://th.bing.com/th/id/R.c62d38d333c55a9b26d48ebf78a5ea18?rik=PgQeTzVYEo6sKg&riu=http%3a%2f%2fs3.amazonaws.com%2fwp-multisite-prd%2fwp-content%2fuploads%2fsites%2f2%2f2017%2f02%2fJAS6493.jpg&ehk=BdYAO0lU29a00xAnPZbQddn4OQfYF%2bm6hdqLLyPoQOg%3d&risl=&pid=ImgRaw&r=0",
      salary: '10',
      location: 'Remote',
      desc:
          "Barber's job is to cut the hair of the people who will be coming towards him. And definately he has the duty in the society to take care of his customer as his own value. Giving value to the every individials in the society we're currently living in is the most important thing, and having a chance to serve a specfic part of the country will definately help them in financial as well as in social manner",
      time: '4-8hrs'),
];
