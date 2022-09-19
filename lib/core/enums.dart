// Note: parsing enums with lowerCamelCase requires extra steps with freezed?
// This is a quicker solution
enum Type { FOR_SALE, FOR_RENT }

extension TypeExtension on Type {
  String get asText {
    switch (this) {
      case Type.FOR_SALE:
        return "eladó";
      case Type.FOR_RENT:
        return "kiadó";
      default:
        return "default";
    }
  }
}

enum EstateType { HOUSE, APARTMENT, ROOM }

extension EstateTypeExtension on EstateType {
  String get asText {
    switch (this) {
      case EstateType.HOUSE:
        return "Ház";
      case EstateType.APARTMENT:
        return "Apartman";
      case EstateType.ROOM:
        return "Szoba";
      default:
        return "default";
    }
  }
}
