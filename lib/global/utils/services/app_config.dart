// Environment Control

enum Environment {
  staging,
  production,
}

class BuildConfiguration {
  static final shared = BuildConfiguration();

  late Environment environment;

  // Base Url
  String get baseUrl {
    switch (environment) {
      case Environment.staging:
        return "";
      case Environment.production:
        return "";
    }
  }

  // Socket Url
  String get socketUrl {
    switch (environment) {
      case Environment.staging:
        return "";
      case Environment.production:
        return "";
    }
  }

  // Mode
  String get mode {
    switch (environment) {
      case Environment.staging:
        return "";
      case Environment.production:
        return "";
    }
  }
}
