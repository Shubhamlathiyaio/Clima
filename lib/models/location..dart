class Location {
  final String name, region, country, tzId, localtime;
  final double lat, lon;
  final int localtimeEpoch;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.tzId,
    required this.localtime,
    required this.lat,
    required this.lon,
    required this.localtimeEpoch,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'],
        region: json['region'],
        country: json['country'],
        tzId: json['tz_id'],
        localtime: json['localtime'],
        lat: json['lat'],
        lon: json['lon'],
        localtimeEpoch: json['localtime_epoch'],
      );
}