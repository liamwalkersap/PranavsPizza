namespace app.restaurant;

entity Order {
    key ID: UUID;
    Customers : Association to Customer;
    Pizzas : Composition of many Pizza;
    Drinks : Composition of many Drink;
    Appetizers : Composition of many Appetizer;
};

entity Pizza {
    key ID : UUID;
    Toppings : Composition of many Topping;
    Size : String(50);
    Crust : String(50);
};

entity Drink {
    key ID : UUID;
    DrinkItem : String(50);
}

entity Appetizer {
    key ID : UUID;
    AppetizerItem : String(50);
}

entity Topping {
    key ID : UUID;
    ToppingItem : String(50);
}

entity Customer {
    key ID : UUID;
    Customer_Address : Association to Address;
    Customer_CCInfo : Association to CCInfo;
};

entity Address {
    key ID : UUID;
    Street : String(100);
    City : String(50);
    State : String(2);
    Zip : String(5);
};

entity CCInfo {
    key ID : UUID;
    CC_Address : Association to Address;
    CardNumber : String(16);
    ExpirationDate : String(5);
    SecurityCode : String(3);
}