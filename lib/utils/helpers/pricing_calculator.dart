class FPricingCalculator {

  static double? calculateTotalPrice (
      double productPrice,
      double packageWeight,
      String deliveryType,
      bool outsideIsland
  ) {
    double taxAmount = productPrice * 0.11;
    double shippingPrice = getShippingCost(packageWeight, deliveryType, outsideIsland);

    if ( shippingPrice != 0) {
      return productPrice + taxAmount + shippingPrice;
    } else {
      return null;
    }
  }

  static bool isOutSideIsland(String locationIsland, String destinationIsland) {
    return locationIsland == destinationIsland;
  }

  static double getShippingCost(double packageWeight, String deliveryType, bool outsideIsland) {

    // Average shipping cost range that found in
    // Indonesia shipping service (search via google)

    if (deliveryType == 'Regular') {
      if (outsideIsland) {
        return 15000 * packageWeight;
      } else {
        return 25000 * packageWeight;
      }
    } else if (deliveryType == "Express") {
      if (outsideIsland) {
        return 30000 * packageWeight;
      } else {
        return 40000 * packageWeight;
      }
    } else if (deliveryType == "Same-Day") {
      return 75000 * packageWeight;
    } else {
      return 0;
    }
  }
}