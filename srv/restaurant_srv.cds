using app.restaurant from '../db/restaurant.cds';
service MenuService {
    entity Appetizer_Items as projection on restaurant.Appetizer;
}