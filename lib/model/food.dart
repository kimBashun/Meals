import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'food.g.dart';

@JsonSerializable()
class Food extends Equatable {
  Food(
      this.strMealThumb,
      this.strMeal,
      this.idMeal,
      this.strInstructions,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20);

  String idMeal;
  String strMealThumb;
  String strMeal;
  String strInstructions;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  String strIngredient6;
  String strIngredient7;
  String strIngredient8;
  String strIngredient9;
  String strIngredient10;
  String strIngredient11;
  String strIngredient12;
  String strIngredient13;
  String strIngredient14;
  String strIngredient15;
  String strIngredient16;
  String strIngredient17;
  String strIngredient18;
  String strIngredient19;
  String strIngredient20;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;
  String strMeasure5;
  String strMeasure6;
  String strMeasure7;
  String strMeasure8;
  String strMeasure9;
  String strMeasure10;
  String strMeasure11;
  String strMeasure12;
  String strMeasure13;
  String strMeasure14;
  String strMeasure15;
  String strMeasure16;
  String strMeasure17;
  String strMeasure18;
  String strMeasure19;
  String strMeasure20;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  String ingridient(String i) {
    switch (i) {
      case "1":
        {
          if (strIngredient1 != null && strMeasure1 != null) {
            if (strIngredient1.isNotEmpty && strMeasure1.isNotEmpty) {
              return "$strMeasure1 $strIngredient1";
            } else {
              return "$strIngredient1";
            }
          } else {
            return "";
          }
        }
        break;
      case "2":
        {
          if (strIngredient2 != null && strMeasure2 != null) {
            if (strIngredient2.isNotEmpty && strMeasure2.isNotEmpty) {
              return "$strMeasure2 $strIngredient2";
            } else {
              return "$strIngredient2";
            }
          } else {
            return "";
          }
        }
        break;
      case "3":
        {
          if (strIngredient3 != null && strMeasure3 != null) {
            if (strIngredient3.isNotEmpty && strMeasure3.isNotEmpty) {
              return "$strMeasure3 $strIngredient3";
            } else {
              return "$strIngredient3";
            }
          } else {
            return "";
          }
        }
        break;
      case "4":
        {
          if (strIngredient4!= null && strMeasure4 != null) {
            if (strIngredient4.isNotEmpty && strMeasure4.isNotEmpty) {
              return "$strMeasure4 $strIngredient4";
            } else {
              return "$strIngredient4";
            }
          } else {
            return "";
          }
        }
        break;
      case "5":
        {
          if (strIngredient5 != null && strMeasure5 != null) {
            if (strIngredient5.isNotEmpty && strMeasure5.isNotEmpty) {
              return "$strMeasure5 $strIngredient5";
            } else {
              return "$strIngredient5";
            }
          } else {
            return "";
          }
        }
        break;
      case "6":
        {
          if (strIngredient6 != null && strMeasure6 != null) {
            if (strIngredient6.isNotEmpty && strMeasure6.isNotEmpty) {
              return "$strMeasure6 $strIngredient6";
            } else {
              return "$strIngredient6";
            }
          } else {
            return "";
          }
        }
        break;
      case "7":
        {
          if (strIngredient7 != null && strMeasure7 != null) {
            if (strIngredient7.isNotEmpty && strMeasure7.isNotEmpty) {
              return "$strMeasure7 $strIngredient7";
            } else {
              return "$strIngredient7";
            }
          } else {
            return "";
          }
        }
        break;
      case "8":
        {
          if (strIngredient8 != null && strMeasure8 != null) {
            if (strIngredient8.isNotEmpty && strMeasure8.isNotEmpty) {
              return "$strMeasure8 $strIngredient8";
            } else {
              return "$strIngredient8";
            }
          } else {
            return "";
          }
        }
        break;
      case "9":
        {
          if (strIngredient9 != null && strMeasure9 != null) {
            if (strIngredient9.isNotEmpty && strMeasure9.isNotEmpty) {
              return "$strMeasure9 $strIngredient9";
            } else {
              return "$strIngredient9";
            }
          } else {
            return "";
          }
        }
        break;
      case "10":
        {
          if (strIngredient10 != null && strMeasure10 != null) {
            if (strIngredient10.isNotEmpty && strMeasure10.isNotEmpty) {
              return "$strMeasure10 $strIngredient10";
            } else {
              return "$strIngredient10";
            }
          } else {
            return "";
          }
        }
        break;
      case "11":
        {
          if (strIngredient11 != null && strMeasure11 != null) {
            if (strIngredient11.isNotEmpty && strMeasure11.isNotEmpty) {
              return "$strMeasure11 $strIngredient11";
            } else {
              return "$strIngredient11";
            }
          } else {
            return "";
          }
        }
        break;
      case "12":
        {
          if (strIngredient12 != null && strMeasure12 != null) {
            if (strIngredient12.isNotEmpty && strMeasure12.isNotEmpty) {
              return "$strMeasure12 $strIngredient12";
            } else {
              return "$strIngredient12";
            }
          } else {
            return "";
          }
        }
        break;
      case "13":
        {
          if (strIngredient13 != null && strMeasure13 != null) {
            if (strIngredient13.isNotEmpty && strMeasure13.isNotEmpty) {
              return "$strMeasure13 $strIngredient13";
            } else {
              return "$strIngredient13";
            }
          } else {
            return "";
          }
        }
        break;
      case "14":
        {
          if (strIngredient14 != null && strMeasure14 != null) {
            if (strIngredient14.isNotEmpty && strMeasure14.isNotEmpty) {
              return "$strMeasure14 $strIngredient14";
            } else {
              return "$strIngredient14";
            }
          } else {
            return "";
          }
        }
        break;
      case "15":
        {
          if (strIngredient15 != null && strMeasure15 != null) {
            if (strIngredient15.isNotEmpty && strMeasure15.isNotEmpty) {
              return "$strMeasure15 $strIngredient15";
            } else {
              return "$strIngredient15";
            }
          } else {
            return "";
          }
        }
        break;
      case "16":
        {
          if (strIngredient16 != null && strMeasure16 != null) {
            if (strIngredient16.isNotEmpty && strMeasure16.isNotEmpty) {
              return "$strMeasure16 $strIngredient16";
            } else {
              return "$strIngredient16";
            }
          } else {
            return "";
          }
        }
        break;
      case "17":
        {
          if (strIngredient17 != null && strMeasure17 != null) {
            if (strIngredient17.isNotEmpty && strMeasure1.isNotEmpty) {
              return "$strMeasure17 $strIngredient17";
            } else {
              return "$strIngredient17";
            }
          } else {
            return "";
          }
        }
        break;
      case "18":
        {
          if (strIngredient18 != null && strMeasure18 != null) {
            if (strIngredient18.isNotEmpty && strMeasure18.isNotEmpty) {
              return "$strMeasure18 $strIngredient18";
            } else {
              return "$strIngredient18";
            }
          } else {
            return "";
          }
        }
        break;
      case "19":
        {
          if (strIngredient19 != null && strMeasure19 != null) {
            if (strIngredient19.isNotEmpty && strMeasure19.isNotEmpty) {
              return "$strMeasure19 $strIngredient19";
            } else {
              return "$strIngredient19";
            }
          } else {
            return "";
          }
        }
        break;
      case "20":
        {
          if (strIngredient20 != null && strMeasure20 != null) {
            if (strIngredient20.isNotEmpty && strMeasure20.isNotEmpty) {
              return "$strMeasure20 $strIngredient20";
            } else {
              return "$strIngredient20";
            }
          } else {
            return "";
          }
        }
        break;
      default:
        {
          if (strIngredient1.isNotEmpty && strMeasure1.isNotEmpty) {
            return "$strMeasure1 $strIngredient1";
          } else {
            return "$strIngredient1";
          }
        }
        break;
    }
  }
}
