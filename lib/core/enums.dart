///This way you can turn off linter rules for a file:
//ignore_for_file:constant_identifier_names

// Note: parsing enums with lowerCamelCase requires extra steps with freezed?
// This is a quicker solution
enum Type { FOR_SALE, FOR_RENT }

///Enums shouldn't be responsible for their own translation
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
