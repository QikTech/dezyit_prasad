class PackageModel{

  late String packageName;
  late double amount;
  late String description;
  late int durationInDays;
  late double discount;
  late String discountInPercentage;
  late int durationInMonths;


  PackageModel({required this.packageName,required this.amount,required this.description,required this.durationInDays,required this.discount,required this.discountInPercentage, required this.durationInMonths});

}

class PricingCardImages{

  late String pricingCardImagesTitle;
  late String pricingCardImage;
  late String pricingCardImageDescription;

  PricingCardImages({required this.pricingCardImagesTitle,required this.pricingCardImage,required this.pricingCardImageDescription});

}