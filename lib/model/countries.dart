class Countries {
  String id;
  String displayName;
  List<Areas> areas;
  int totalConfirmed;
  int totalDeaths;
  int totalRecovered;
  int totalRecoveredDelta;
  int totalDeathsDelta;
  int totalConfirmedDelta;
  String lastUpdated;

  Countries(
      {this.id,
      this.displayName,
      this.areas,
      this.totalConfirmed,
      this.totalDeaths,
      this.totalRecovered,
      this.totalRecoveredDelta,
      this.totalDeathsDelta,
      this.totalConfirmedDelta,
      this.lastUpdated});

  Countries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['displayName'];
    if (json['areas'] != null) {
      areas = new List<Areas>();
      json['areas'].forEach((v) {
        areas.add(new Areas.fromJson(v));
      });
    }
    totalConfirmed = json['totalConfirmed'];
    totalDeaths = json['totalDeaths'];
    totalRecovered = json['totalRecovered'];
    totalRecoveredDelta = json['totalRecoveredDelta'];
    totalDeathsDelta = json['totalDeathsDelta'];
    totalConfirmedDelta = json['totalConfirmedDelta'];
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['displayName'] = this.displayName;
    if (this.areas != null) {
      data['areas'] = this.areas.map((v) => v.toJson()).toList();
    }
    data['totalConfirmed'] = this.totalConfirmed;
    data['totalDeaths'] = this.totalDeaths;
    data['totalRecovered'] = this.totalRecovered;
    data['totalRecoveredDelta'] = this.totalRecoveredDelta;
    data['totalDeathsDelta'] = this.totalDeathsDelta;
    data['totalConfirmedDelta'] = this.totalConfirmedDelta;
    data['lastUpdated'] = this.lastUpdated;
    return data;
  }
}

class Areas {
  String id;
  String displayName;
  int totalConfirmed;
  int totalDeaths;
  int totalRecovered;
  int totalRecoveredDelta;
  int totalConfirmedDelta;
  String lastUpdated;
  double lat;
  double long;
  String parentId;

  Areas(
      {this.id,
      this.displayName,
      this.totalConfirmed,
      this.totalDeaths,
      this.totalRecovered,
      this.totalRecoveredDelta,
      this.totalConfirmedDelta,
      this.lastUpdated,
      this.lat,
      this.long,
      this.parentId});

  Areas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    displayName = json['displayName'];
    totalConfirmed = json['totalConfirmed'];
    totalDeaths = json['totalDeaths'];
    totalRecovered = json['totalRecovered'];
    totalRecoveredDelta = json['totalRecoveredDelta'];
    totalConfirmedDelta = json['totalConfirmedDelta'];
    lastUpdated = json['lastUpdated'];
    lat = json['lat'].toDouble();
    long = json['long'].toDouble();
    parentId = json['parentId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['displayName'] = this.displayName;
    data['totalConfirmed'] = this.totalConfirmed;
    data['totalDeaths'] = this.totalDeaths;
    data['totalRecovered'] = this.totalRecovered;
    data['totalRecoveredDelta'] = this.totalRecoveredDelta;
    data['totalConfirmedDelta'] = this.totalConfirmedDelta;
    data['lastUpdated'] = this.lastUpdated;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['parentId'] = this.parentId;
    return data;
  }
}
