class Store {
  String fullAddress;
  String storeName;

  Store(this.storeName, String street, int houseNumber, int postCode, String city)
      : fullAddress = '$storeName\n$street $houseNumber\n$postCode $city';

  void outputFullAddress() {
    print(fullAddress);
  }

  String outputName() {
    return storeName;
  }
}

class Groceries {
  String name, store, manufacturer, expiryDate, unit;

  double amount;

  double price;

  Groceries(this.name, this.store, this.manufacturer, this.expiryDate, this.amount, this.unit, this.price);

  void giveallInfos() {
    print("Name: $name");
    print('Laden: $store');
    print("Hersteller: $manufacturer");
    print("MDH: $expiryDate");
    print("Menge: $amount $unit");
    print("Preis: $price €");
  }
}

class Milk extends Groceries {
  String milkType;
  Milk(
    super.name,
    super.store,
    super.manufacturer,
    super.expiryDate,
    super.amount,
    super.unit,
    super.price,
    this.milkType,
  );

  @override
  void giveallInfos() {
    print("Name: $name");
    print('Laden: $store');
    print("Hersteller: $manufacturer");
    print('Milchtyp: $milkType');
    print("MDH: $expiryDate");
    print("Menge: $amount $unit");
    print("Preis: $price €");
  }
}

class Meat extends Groceries {
  String meatType;
  Meat(super.name, super.store, super.manufacturer, super.expiryDate, super.weight, super.unit, super.price,
      this.meatType);
  @override
  void giveallInfos() {
    print("Name: $name");
    print('Laden: $store');
    print("Hersteller: $manufacturer");
    print('Meattyp: $meatType');
    print("MDH: $expiryDate");
    print("Menge: $amount $unit");
    print("Preis: $price €");
  }
}

void main() {
  Store storeOne = Store('Edeka', 'Hauptstraße', 5, 80336, 'München');
  Store storeTwo = Store('Metzger Müller', 'Schillerstraße', 65, 80336, 'München');
  Milk milk1 = Milk("Milch", storeOne.outputName(), "Bärenmarke", '09.06.2024', 1, 'Liter', 1.99, 'Frischmilch');
  Milk milk2 = Milk("Milch", storeOne.outputName(), "Ehrmann", '12.08.2024', 12, 'Liter', 9.50, 'H-Milch');
  Meat meat1 = Meat("Hackfleisch", storeTwo.storeName, "Metzger", '3 Tage', 1, 'kg', 11.99, 'Rind');

  milk1.giveallInfos();
  print('');
  milk2.giveallInfos();
  print('');
  meat1.giveallInfos();
}
