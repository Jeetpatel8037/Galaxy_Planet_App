import 'package:flutter/cupertino.dart';

import 'Modals/galaxy_Modal.dart';

List<dynamic> galaxy = [
  Galaxy(
      id: 1,
      pic: Image.asset('assets/images/moon.png', height: 110),
      name: 'MOON',
      sun: '150 million km',
      earth: '384,400 km',
      km: '334.4k km',
      dis: '1.62 m/s',
      view:
          "Earth's Moon is the only place beyond Earth where humans have set foot, so far. The"
          "Moon makes our planet more livable by moderating how much it wobbles on its axis."),
  Galaxy(
      id: 2,
      pic: Image.asset('assets/images/earth.png', height: 110),
      name: 'EARTH',
      sun: '148.76 million km',
      earth: '-',
      km: '149.6m km',
      dis: '9.798 m/s',
      view:
          "Earth—our home planet—is the only place we know of so far that’s inhabited byliving things. It's also the only planet in our solar system with liquid water on the surface."),
  Galaxy(
      id: 3,
      pic: Image.asset('assets/images/mars.png', height: 110),
      name: 'MARS',
      sun: '217.29 million km',
      earth: '286.53 million km',
      km: '54.6m km',
      dis: '3.711 m/s',
      view:
          "Mars is a dusty, cold, desert world with a very thin atmosphere. There is strongevidence Mars was—billions of years ago—wetter and warmer, with a thicker atmosphere."),
  Galaxy(
      id: 4,
      pic: Image.asset('assets/images/mercury.png', height: 110),
      name: 'MERCURY',
      sun: '65.661 million km',
      earth: '193.12 million km',
      km: '47.9m km',
      dis: '3.7 m/s',
      view:
          "Mercury—the smallest planet in our solar system and closest to the Sun—is onlyslightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every88 Earth days."),
  Galaxy(
      id: 5,
      pic: Image.asset('assets/images/neptune.png', height: 110),
      name: 'NEPTUNE',
      sun: '4.4745 billion km',
      earth: '4.6232 billion km',
      km: '334.4k km',
      dis: '1.62 m/s',
      view:
          "Neptune—the eighth and most distant major planet orbiting our Sun—is dark, coldand whipped by supersonic winds. It was the first planet located through mathematicalcalculations, rather than by telescope.")
];
