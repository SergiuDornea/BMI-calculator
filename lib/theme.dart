import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278190080),
      surfaceTint: Color(4284112244),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280362297),
      onPrimaryContainer: Color(4289573065),
      secondary: Color(4279572538),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281743707),
      onSecondaryContainer: Color(4291415030),
      tertiary: Color(4288806974),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293263451),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294768892),
      onSurface: Color(4279966494),
      onSurfaceVariant: Color(4282795597),
      outline: Color(4286019197),
      outlineVariant: Color(4291282381),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348147),
      inversePrimary: Color(4290954719),
      primaryFixed: Color(4292796924),
      onPrimaryFixed: Color(4279638574),
      primaryFixedDim: Color(4290954719),
      onPrimaryFixedVariant: Color(4282533467),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4279572537),
      secondaryFixedDim: Color(4290888686),
      onSecondaryFixedVariant: Color(4282467432),
      tertiaryFixed: Color(4294957533),
      onTertiaryFixed: Color(4282384403),
      tertiaryFixedDim: Color(4294947517),
      onTertiaryFixedVariant: Color(4287627318),
      surfaceDim: Color(4292663773),
      surfaceBright: Color(4294768892),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374134),
      surfaceContainer: Color(4293979632),
      surfaceContainerHigh: Color(4293584875),
      surfaceContainerHighest: Color(4293255653),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278190080),
      surfaceTint: Color(4284112244),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280362297),
      onPrimaryContainer: Color(4292402166),
      secondary: Color(4279572538),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281743707),
      onSecondaryContainer: Color(4294967039),
      tertiary: Color(4287168563),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293263451),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768892),
      onSurface: Color(4279966494),
      onSurfaceVariant: Color(4282532425),
      outline: Color(4284440165),
      outlineVariant: Color(4286216833),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348147),
      inversePrimary: Color(4290954719),
      primaryFixed: Color(4285559691),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283915121),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285493912),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283849086),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4293263451),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4290248775),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663773),
      surfaceBright: Color(4294768892),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374134),
      surfaceContainer: Color(4293979632),
      surfaceContainerHigh: Color(4293584875),
      surfaceContainerHighest: Color(4293255653),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278190080),
      surfaceTint: Color(4284112244),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280362297),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279572538),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281743707),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283170841),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287168563),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768892),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280492841),
      outline: Color(4282532425),
      outlineVariant: Color(4282532425),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281348147),
      inversePrimary: Color(4293585919),
      primaryFixed: Color(4282270295),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280822848),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282204259),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280756812),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287168563),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284481569),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663773),
      surfaceBright: Color(4294768892),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374134),
      surfaceContainer: Color(4293979632),
      surfaceContainerHigh: Color(4293584875),
      surfaceContainerHighest: Color(4293255653),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290954719),
      surfaceTint: Color(4290954719),
      onPrimary: Color(4281020228),
      primaryContainer: Color(4278519835),
      onPrimaryContainer: Color(4288059826),
      secondary: Color(4290888686),
      onSecondary: Color(4280954192),
      secondaryContainer: Color(4280164675),
      onSecondaryContainer: Color(4289375446),
      tertiary: Color(4294947517),
      onTertiary: Color(4284940324),
      tertiaryContainer: Color(4293263451),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279440150),
      onSurface: Color(4293255653),
      onSurfaceVariant: Color(4291282381),
      outline: Color(4287729815),
      outlineVariant: Color(4282795597),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255653),
      inversePrimary: Color(4284112244),
      primaryFixed: Color(4292796924),
      onPrimaryFixed: Color(4279638574),
      primaryFixedDim: Color(4290954719),
      onPrimaryFixedVariant: Color(4282533467),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4279572537),
      secondaryFixedDim: Color(4290888686),
      onSecondaryFixedVariant: Color(4282467432),
      tertiaryFixed: Color(4294957533),
      onTertiaryFixed: Color(4282384403),
      tertiaryFixedDim: Color(4294947517),
      onTertiaryFixedVariant: Color(4287627318),
      surfaceDim: Color(4279440150),
      surfaceBright: Color(4281940284),
      surfaceContainerLowest: Color(4279111184),
      surfaceContainerLow: Color(4279966494),
      surfaceContainer: Color(4280229666),
      surfaceContainerHigh: Color(4280953388),
      surfaceContainerHighest: Color(4281676855),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291217892),
      surfaceTint: Color(4290954719),
      onPrimary: Color(4279309608),
      primaryContainer: Color(4287401896),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291217394),
      onSecondary: Color(4279243572),
      secondaryContainer: Color(4287336118),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294949058),
      onTertiary: Color(4281729039),
      tertiaryContainer: Color(4294921850),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440150),
      onSurface: Color(4294834941),
      onSurfaceVariant: Color(4291545809),
      outline: Color(4288914089),
      outlineVariant: Color(4286808713),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255653),
      inversePrimary: Color(4282599260),
      primaryFixed: Color(4292796924),
      onPrimaryFixed: Color(4278980643),
      primaryFixedDim: Color(4290954719),
      onPrimaryFixedVariant: Color(4281414986),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4278848815),
      secondaryFixedDim: Color(4290888686),
      onSecondaryFixedVariant: Color(4281348950),
      tertiaryFixed: Color(4294957533),
      onTertiaryFixed: Color(4281073675),
      tertiaryFixedDim: Color(4294947517),
      onTertiaryFixedVariant: Color(4285595689),
      surfaceDim: Color(4279440150),
      surfaceBright: Color(4281940284),
      surfaceContainerLowest: Color(4279111184),
      surfaceContainerLow: Color(4279966494),
      surfaceContainer: Color(4280229666),
      surfaceContainerHigh: Color(4280953388),
      surfaceContainerHighest: Color(4281676855),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4290954719),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291217892),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294834687),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291217394),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294949058),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440150),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291545809),
      outlineVariant: Color(4291545809),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255653),
      inversePrimary: Color(4280625469),
      primaryFixed: Color(4293125631),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291217892),
      onPrimaryFixedVariant: Color(4279309608),
      secondaryFixed: Color(4293256703),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291217394),
      onSecondaryFixedVariant: Color(4279243572),
      tertiaryFixed: Color(4294959074),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294949058),
      onTertiaryFixedVariant: Color(4281729039),
      surfaceDim: Color(4279440150),
      surfaceBright: Color(4281940284),
      surfaceContainerLowest: Color(4279111184),
      surfaceContainerLow: Color(4279966494),
      surfaceContainer: Color(4280229666),
      surfaceContainerHigh: Color(4280953388),
      surfaceContainerHighest: Color(4281676855),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
