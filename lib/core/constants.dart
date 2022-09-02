import 'package:flutter/widgets.dart';

import 'core.dart';

List<Project> defProjects = [
  Project(
    name: 'TrudeLizares',
    description:
        '''A Shopify website that sells different clothes. Maintained and developed the website's layout and features. Also was in charge of managing the website's content''',
    projectURL: '',
    websiteURL: 'https://trudelizares.com',
    technologies: [
      Technology.shopify,
      Technology.graphql,
      Technology.javascript,
    ],
  ),
  Project(
    name: 'Galleon',
    description:
        '''An e-commerce website that sells mobile phones and accessories. Handled the maintenance, product updates and development of features for the website.''',
    projectURL: '',
    websiteURL: 'https://www.galleonent.com',
    technologies: [
      Technology.php,
      Technology.opencart,
      Technology.javascript,
    ],
  ),
  Project(
    name: 'Juan Ride',
    description:
        '''An ordering system that was made to automate their manual process. Was in charge of developing several features on their Shopify website and custom order management website.''',
    projectURL: '',
    websiteURL: 'https://www.bacolodlifestyle.com/juan-ride-launches-website',
    technologies: [
      Technology.shopify,
      Technology.angular,
      Technology.graphql,
    ],
  ),
  Project(
    name: 'Panebakery',
    description:
        '''Bakery Shop in the US. Maintained and did some UI changes and  bug fixes for the ordering setup.''',
    projectURL: '',
    websiteURL: 'http://www.panebakery.com',
    technologies: [
      Technology.opencart,
      Technology.php,
      Technology.javascript,
    ],
  ),
  Project(
    name: '''Nature's Village Resort''',
    description:
        '''A simple business website for the Resort in Talisay. Maintained and handled the changes for the website layouts.''',
    projectURL: '',
    websiteURL: 'https://www.naturesvillageresort.com',
    technologies: [
      Technology.javascript,
      Technology.wordpress,
    ],
  ),
  Project(
    name: 'School SOS System',
    description:
        ''''A mobile app and an admin website for to be used by US schools during emergencies. Created the updated android and iOS versions of the app.''',
    projectURL: '',
    websiteURL:
        'https://play.google.com/store/apps/details?id=com.stratiumsoftware.school_sos_system_vandamme&hl=en&gl=US',
    technologies: [
      Technology.flutter,
      Technology.firebase,
      Technology.angular,
    ],
  ),
  // Project(
  //   name: 'Mushu',
  //   description:
  //       'An mobile application for a local restaurant in Bacolod PH. Allows the user to order and pay for their orders through the app.',
  //   projectURL: '',
  //   websiteURL:
  //       'https://play.google.com/store/apps/details?id=com.stratiumsoftwaregroup.opencartmobile&hl=en_CA&gl=US',
  //   technologies: [
  //     Technology.flutter,
  //     Technology.opencart,
  //     Technology.php,
  //   ],
  // ),
];

List<Experience> defExperience = [
  Experience(
    company: 'HYBrain',
    duration: 'Feb 2018 - Aug 2018',
    duties: [
      'Trained on using Ionic and Angular Frameworks.',
      'Worked with a team to develop both mobile app and website.',
      'Preparing reports on programming project specifications, activities, or status.'
    ],
    position: 'Mobile & Web Developer',
  ),
  Experience(
    company: 'Stratium Software',
    duration: 'Aug 2018 - Present',
    duties: [
      'Develop Shopify, Angular and Flutter Projects',
      'Worked with a team to develop both mobile app and website.',
      'Create technical documentation for projects',
      'Design and setup Firebase projects'
    ],
    position: 'Software Developer',
  ),
  Experience(
    company: 'CodeActive',
    duration: 'Nov 2021 - Present',
    duties: [
      'Worked as a Project based web and mobile app developer',
      'Developed Match a Service and GoSwoof as the sole mobile developer.',
      'Communicated with international clients to help identify the features they wanted for their app.',
      'Created CI/CD solutions to projects to ensure the consistency of the different builds',
    ],
    position: 'Web & Mobile Developer',
  ),
];

const String defEmail = 'christiangerardhizon@gmail.com';
const String defResumeURL =
    'https://docs.google.com/document/d/e/2PACX-1vSspUf8_eiI2TQixma3Yk00tNw3buEhUZco4CvGnpNiqdgXcRrXOX3ksA27HZ7G79o7SO_Dw45h0JB3/pub';

const String defProjectRepo =
    'https://github.com/ChristianGerardHizon/PortfolioV2';

const String defFacebook = 'https://www.facebook.com/christian.gerard.hizon';
const String defLinkedIn = 'https://www.linkedin.com/in/christiangerardhizon';
const String defGithub = 'https://github.com/ChristianGerardHizon';
const String defStackOverflow =
    'https://stackoverflow.com/users/10476158/mr-roboto';

class Constants {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
