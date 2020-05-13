class Timeline {
  List<TimelineData> data;
  bool bCacheHit;

  Timeline({this.data, this.bCacheHit});

  Timeline.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<TimelineData>();
      json['data'].forEach((v) {
        data.add(new TimelineData.fromJson(v));
      });
    }
    bCacheHit = json['_cacheHit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['_cacheHit'] = this.bCacheHit;
    return data;
  }
}

class TimelineData {
  String updatedAt;
  String date;
  int deaths;
  int confirmed;
  int recovered;
  int active;
  int newConfirmed;
  int newRecovered;
  int newDeaths;
  bool isInProgress;

  TimelineData(
      {this.updatedAt,
      this.date,
      this.deaths,
      this.confirmed,
      this.recovered,
      this.active,
      this.newConfirmed,
      this.newRecovered,
      this.newDeaths,
      this.isInProgress});

  TimelineData.fromJson(Map<String, dynamic> json) {
    updatedAt = json['updated_at'];
    date = json['date'];
    deaths = json['deaths'];
    confirmed = json['confirmed'];
    recovered = json['recovered'];
    active = json['active'];
    newConfirmed = json['new_confirmed'];
    newRecovered = json['new_recovered'];
    newDeaths = json['new_deaths'];
    isInProgress = json['is_in_progress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated_at'] = this.updatedAt;
    data['date'] = this.date;
    data['deaths'] = this.deaths;
    data['confirmed'] = this.confirmed;
    data['recovered'] = this.recovered;
    data['active'] = this.active;
    data['new_confirmed'] = this.newConfirmed;
    data['new_recovered'] = this.newRecovered;
    data['new_deaths'] = this.newDeaths;
    data['is_in_progress'] = this.isInProgress;
    return data;
  }
}
