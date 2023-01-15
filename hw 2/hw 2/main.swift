//Д/З №2 Условные операторы if, else if, switch
//
//№1. Используя функции, условные операторы составить следующую программу прогноза погоды:
//
//При вводе одного из городов в readLine (Бишкек, Чолпон-Ата, Талас, Ош, Джалал-Абад, Нарын, Баткен) выводить в итоге данные о погоде на ближайшие 3 дня в указанном городе
let city = readLine()!
func metcast (city:String){
    switch city{
    case "Бишкек":
        print("В Бишкеке сегодня 25 градусов, завтра 34 градуса, послезавтра 15 градусов")
    case "Чолпон-Ата":
        print("В Чолпон-Ате сегодня 35 градусов, завтра 33 градуса, послезавтра 19 градусов")
    case "Талас":
        print("В Таласе сегодня 22 градуса, завтра 36 градусов, послезавтра 11 градусов")
    case "Ош":
        print("В Оше сегодня 40 градусов, завтра 41 градуса, послезавтра 35 градусов")
    case "Джалал-Абад":
        print("В Джалал-Абаде сегодня 30 градусов, завтра 33 градуса, послезавтра 19 градусов")
    case "Нарын":
        print("В Нарыне сегодня 15 градусов, завтра 24 градуса, послезавтра 13 градусов")
    case "Баткен":
        print("В Баткене сегодня 27 градусов, завтра 24 градуса, послезавтра 19 градусов")
    default :
        print("Неверно введен город")
    }
}
metcast(city: city)




//№2. Используя условные операторы и функции создать программу, которая после ввода 5 наименований продуктов через readLine будет считать итоговую стоимость покупок (со скидкой в 5%). Учесть что товары могут повторяться
//
//В итоге должно быть так: (например)
//Ваши товары:
//Кола - 50с
//Кефир - 65с
//Молоко - 40с
//Хлеб - 20с
//Салат - 100с
//
//275с + скидка 13,75c
//Итого: 261,25с

print("Добро пожаловать в наш магазин, у нас есть ассортимент из следующих продуктов: Кола - 50с, Кефир - 65c, Молоко - 40с, Хлеб - 20с, Салат - 100с. Выберите продукты, которые вы хотели бы приобрести?")

let product1 = readLine()!
let product2 = readLine()!
let product3 = readLine()!
let product4 = readLine()!
let product5 = readLine()!

func PriceOfProducts(product:String) -> Int {
    switch product {
    case "Кола":
        print("Вы выбрали продукт Кола. Цена - 50 сом")
        return 100
    case "Кефир":
        print("Вы выбрали продукт Кефир. Цена - 65 сом")
        return 65
    case "Молоко":
        print("Вы выбрали продукт Молоко. Цена - 40 сом")
        return 40
    case "Хлеб":
        print("Вы выбрали продукт Хлеб. Цена - 20 сом")
        return 20
    case "Салат":
        print("Вы выбрали продукт Салат. Цена - 100 сом")
     return 100
    default : print("Неизвестный товар")
    return 0
    }
    
}
let product1Price = PriceOfProducts(product: product1)
let product2Price = PriceOfProducts(product: product2)
let product3Price = PriceOfProducts(product: product3)
let product4Price = PriceOfProducts(product: product4)
let product5Price = PriceOfProducts(product: product5)

let total = product1Price+product2Price+product3Price+product4Price+product5Price
print("Итог (без учета скидки):\(total) сом")
let sale = total / 100 * 5
let finalPrice = total - sale
print("Итого:\(finalPrice) сом.")





