import Foundation
// MARK: - Первая задача

//----------Первое задание-----------
//Решить квадратное уравнение.

//первое решение
//quadraticEquation(a: 1, b: 15, c: 0)
//quadraticEquation(a: -1, b: 6, c: -10) //D = 0
//
//
//func quadraticEquation(a: Double, b: Double, c: Double) {
//    let d = pow(b, 2.0) - 4 * a * c
//    print("Дискриминант равен: \(d)")
//    if d > 0 {
//    let root1 = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
//    let root2 = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)
//        print("Первое решение  равно: \(root1)")
//        print("Второе решение равно: \(root2)")
//        print(pow(root1, 2.0) * a + root1 * b + c)
//        print(pow(root2, 2.0) * a + root2 * b + c)
//    }
//    else if d == 0 {
//        let root3 = -b / (2 * a)
//        print("Единственное решение равно: \(root3)")
//    }
//
//    else {
//        print("решений нема")
//    }
//}
//добавить еще один исход с d=0

//----------Второе задание-----------
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

//let firstSide: Double = 3
//let secondSide: Double = 4
//
//print("Периметр фигуры равен: \(perimeter(a: firstSide, b: secondSide))")
//print("Гипотенуза фигуры равна: \(hypotenuse(a: firstSide, b: secondSide))")
//print("Площадь фигуры равна: \(square(a: firstSide, b: secondSide))")
//
//func square(a: Double, b: Double) -> Double{
//    return 0.5 * a * b
//}
//
//func hypotenuse(a: Double, b: Double) -> Double {
//    return (pow(a, 2.0) + pow(b, 2.0)).squareRoot()
//}
//
//func perimeter(a: Double, b: Double) -> Double{
//    return a + b + hypotenuse(a: a, b: b)
//}


//----------Третье задание-----------
//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

//let year = 5
//var summ = 0.0
//var percentt = 0.0
//var flag = false
#warning("Ввод суммы -1000")
//
//repeat {
//print("Введите сумму вклада:")
//guard let inputSum = readLine(),
//      let sum = Double(inputSum), sum > 0  else {
//        print("Неверный ввод. Повторите попытку")
//          continue
//}
//print("Введите процентную ставку:")
#warning("Ввод ставки -12")
//guard let inputPercent = readLine(),
//    let percent = Double(inputPercent), percent > 0 else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    summ = sum
//    percentt = percent
//    flag = true
//    } while !flag
//
//print("Сумма вклада через \(year) лет будет равна: \(bankDeposit(sum: summ, percent: percentt, year: year))")
//
//func bankDeposit(sum: Double, percent: Double, year: Int) -> Double {
//    var S: Double = 0
//    var summa = sum
//    for _ in 1...year {
//        S = summa * percent/100
//        summa += S
//    }
//    return round(summa * 100) / 100
//}

// MARK: - Вторая задача


//----------Первое задание-----------
//Написать функцию, которая определяет, четное число или нет.

//even(number: -10)
//
//func even(number: Int) {
//    if Int(number) % 2 == 0{
//        print("Число четное")
//    }
//    else {
//        print("Число не четное")
//    }
//}


//----------Второе задание-----------
//Написать функцию, которая определяет, делится ли число без остатка на 3.

//let numberOfRemainder = 17
//
//division(num: numberOfRemainder)
//
//func division(num: Int) {
//    if num % 3 == 0 {
//    print("Делится")
//    }
//    else {
//        let div = num % 3
//        print("Не делится. Остаток \(div)")
//    }
//}


//----------Третье задание-----------
//Создать возрастающий массив из 100 чисел.

//var mass: [Int] = []
//
//for i in 0...99 {
//    mass.append(i)
//}
//print(mass)
//////первый способ, классический
//var secondMass = mass
//
////for (index,value) in secondMass.enumerated() {
////    if (value % 2) != 0 && (value % 3) != 0 {
////        secondMass.remove(at: index)
////    }
////}
////print(secondMass)
//
////второй способ, "не по учебнику"
//var massDeleted = mass.filter {$0 % 2 != 0 && $0 % 3 != 0}
//print(massDeleted)
//var massDel = mass.compactMap{$0 % 2 != 0 && $0 % 3 != 0}
//print(massDel)

// MARK: - Третья задача

//----------Первое задание-----------

//struct Automobile {
//    var carBrand: String
//    var yearManufactured = 2019
//    var trunkVolume = 850
//    var engineStart = true
//    var openWindows = true
//    var filedVolume = 500
//    mutating func addCargo(x: Int){
//        filedVolume += x
//    }
//    mutating func outCargo(x: Int){
//        filedVolume -= x
//    }
//
//}
//
//struct Truck {
//    var carBrand = "Volvo"
//    var yearManufactured = 2020
//    var trunkVolume = 78000
//    var engineStart = false
//    var openWindows = false
//    var filedVolume = 76000
//    mutating func addCargo(x: Int){
//        filedVolume += x
//    }
//    mutating func outCargo(x: Int){
//        filedVolume -= x
//    }
//}
//Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//enum CarActions {
//    case powerEngine
//    case outEngine
//    case openWindows
//    case closeWindows
//    case inputCargo(Int)
//    case outCargo(Int)
//}
//
//var firstCar = Automobile(carBrand: "BMW")
//var secondCar = Truck()
//
//firstCar.filedVolume
//firstCar.addCargo(x: 10)
//firstCar.filedVolume
//secondCar.filedVolume
//secondCar.addCargo(x: 1300)
//secondCar.filedVolume
//secondCar.outCargo(x: 27532)
//secondCar.filedVolume
////вывести значения свойств экземпляров в консоль
//print(firstCar.carBrand, firstCar.yearManufactured, firstCar.engineStart, firstCar.openWindows, firstCar.filedVolume)
//print(secondCar.carBrand, secondCar.yearManufactured, secondCar.engineStart, secondCar.openWindows, secondCar.filedVolume)


// MARK: - Четвертая задача

//class Car {
//    var carBrand: String
//    var yearManufactured: Int
//    var trunkVolume = 850
//    var engineStart = true
//    var openWindows = true
//    var filedVolume = 500
//    func addCargo(x: Int){
//        filedVolume += x
//    }
//    func outCargo(x: Int) {
//        filedVolume -= x
//    }
//    init(carBrand: String, yearManufactured: Int) {
//        self.carBrand = carBrand
//        self.yearManufactured = yearManufactured
//    }
//}
//
//enum CarActions {
//    case onEngine
//    case offEngine
//    case openWindows
//    case closeWindows
//}
//
//class TrunkCar: Car {
//    var isPowerCar: CarActions
//
//    init(carBrand: String, yearManufactured: Int, isPowerCar: CarActions) {
//        self.isPowerCar = isPowerCar
//        super.init(carBrand: carBrand, yearManufactured: yearManufactured)
//    }
//
//    func power(){
//        if isPowerCar == .onEngine {
//            print("Машина заведена")
//        }
//        else {
//            print("Машина заглушена")
//        }
//    }
//}
//class SportCar: Car {
//    var isOpenedWindows: CarActions
//
//    init(carBrand: String, yearManufactured: Int, isOpenedWindows: CarActions) {
//        self.isOpenedWindows = isOpenedWindows
//        super.init(carBrand: carBrand, yearManufactured: yearManufactured)
//    }
//    func windows(){
//        if isOpenedWindows == .openWindows {
//            print("Окна открыты")
//        }
//        else {
//            print("Окна закрыты")
//        }
//    }
//}
//переопределить метод


//let volvo = TrunkCar(carBrand: "Volvo", yearManufactured: 2019, isPowerCar: .onEngine)
//let bmw = SportCar(carBrand: "BMW", yearManufactured: 2022, isOpenedWindows: .openWindows)
//print(volvo.carBrand)
//print(bmw.windows())

// MARK: - Пятая задача

//Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».
//Создать несколько объектов каждого класса. Применить к ним различные действия.
//Вывести сами объекты в консоль.

//protocol Car {
//    var horsePower: Int? { get }
//    var trunkFlag: Bool { get set }
//    var windowsFlag: Bool { get set }
//    func openTrunk()
//    func closeTrunk()
//    func openWindows()
//    func closeWindows()
//}
//
//protocol CustomStringConvertible {
//    var brandName: String { get }
//}
//
//extension Car {
//    mutating func openTrunk() {
//print("Багажник открыт")
//        trunkFlag = true
//    }
//    mutating func closeTrunk() {
//        print("Багажник закрыт")
//        trunkFlag = false
//    }
//
//    mutating func openWindows(){
//        print("Окно открыто")
//        windowsFlag = true
//    }
//}
//
//extension tunkCar : CustomStringConvertible {
//    var brandName: String {
//        return "Volvo"
//    }
//}
//
//extension sportCar : CustomStringConvertible {
//    var brandName: String {
//        return "BMW"
//    }
//}
//
//class tunkCar : Car {
//    func openWindows() {
//        windowsFlag = true
//    }
//
//    func closeWindows() {
//        windowsFlag = false
//    }
//
//    func closeTrunk() {
//        trunkFlag = false
//    }
//    var windowsFlag: Bool = false
//    var trunkFlag: Bool = false
//    var horsePower: Int?
//    var volumeTank: Int?
//    func openTrunk() {
//        trunkFlag = true
//        print("Багажник открыт")
//    }
//}
//
//class sportCar : Car {
//    func openWindows() {
//        windowsFlag = true
//    }
//
//    func closeWindows() {
//        windowsFlag = false
//    }
//
//    func closeTrunk() {
//        trunkFlag = false
//    }
//    var windowsFlag: Bool = false
//    var trunkFlag: Bool = false
//    var horsePower: Int?
//    var clearance: Int?
//    func openTrunk() {
//        trunkFlag = true
//        print("Багажник открыт")
//    }
//}
//
//var firstCar = sportCar()
//print(firstCar.brandName)
//var secondCar = tunkCar()
//print(secondCar.brandName)
//var flag = false
//repeat {
//print("Хотите открыть багажник?")
//print("Если хотите, то введите ДА, если нет - НЕТ")
//guard let trunkAnswer = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//}
#warning("Заново не запускается при 1 или другого значения кроме ДА или НЕТ")
//    if trunkAnswer.lowercased() == "да" {
//    secondCar.openTrunk()
//    flag = true
//    } else if trunkAnswer.lowercased() == "нет" {
//    secondCar.closeTrunk()
//    flag = true
//}
//} while !flag

// MARK: - Шестая задача

//Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//*Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


//struct Details {
//    var name: String
//    var groupId: Int
//}
//
//extension Details {
//    var description : String {
//        return "Name: \(name), GroupID: \(groupId)"
//    }
//}
//
//
//struct queue <T> {
//    private var elements: [T] = []
//
//    public var isEmpty: Bool {
//        return elements.count == 0
//    }
//
//    mutating func enqueue(element: T) {
//        elements.append(element)
//    }
//    mutating func dequeue()->T {
//        return elements.removeLast()
//    }
//
//    public var head: T? {
//        if isEmpty {
//            print("The elemnets aren't found. Array is empty.")
//            return nil
//        } else {
//            print("Last element is \(elements.last!)")
//            return elements.last
//        }
//    }
//
//    public var front: T? {
//        if isEmpty {
//            print("Элементов нет")
//            return nil
//        } else {
//            print("Первый элемент - \(elements.first!)")
//            return elements.first
//        }
//    }
//
//    func printMyQueue() {
//        print(elements)
//    }
//
//    subscript (element: T) -> T? {
//
//        return nil
//    }
//
//}
////создаем расширение для сортировки по какому-то заранее не известному свойству
//extension queue {
//    func myFilter(predicate:(T) -> Bool) -> [T] {
//        var result = [T]()
//        for i in elements {
//            if predicate(i) {
//                result.append(i)
//            }
//        }
//        return result
//    }
//}
////создаем экземпляр и заполняем данными
//var pupil = queue<Details>()
//
//pupil.enqueue(element: .init(name: "ромб", groupId: 4))
//pupil.enqueue(element: .init(name: "круг", groupId: 5))
//pupil.enqueue(element: .init(name: "квадрат", groupId: 5))
//pupil.enqueue(element: .init(name: "циллиндр", groupId: 3))
//pupil.enqueue(element: .init(name: "Alex", groupId: 4))
//pupil.enqueue(element: .init(name: "Timothi", groupId: 3))
//pupil.enqueue(element: .init(name: "Sarah", groupId: 4))
//pupil.enqueue(element: .init(name: "Pamela", groupId: 3))
//
//pupil.printMyQueue()
//pupil.head
//pupil.front
//
//let honoursPupil = pupil.myFilter(predicate: {$0.groupId == 5})
//print(honoursPupil)

// MARK: - Седьмая задача
////Первый пример из учебника
//class Factory {
//    fileprivate var employes = [
//        "Иванов Иван Иванович" : 3000,
//        "Сидоров Сидор Сидорович" : 12080,
//        "Петров Петр Петрович": 8040
//    ]
//
//
//    func salary(atFIO fio: String) -> Int? {
//    return employes[fio]
//    }
//    func averageSalary() -> Int {
//        guard employes.count > 1 else {
//            return 0
//        }
//        var totalSalary = 0
//        for employee in employes {
//            totalSalary += employee.value
//        }
//        return totalSalary / employes.count
//}
//}
//let factory = Factory()
//
//print(factory.salary(atFIO: "Иванов Иван Иванович")!)
////print(factory.salary(atFIO: "Брюс Вейн Бетменович")!)
//print(factory.averageSalary())

//Второй пример из учебника

//struct Item {
//    var price: Int
//    var count: Int
//    let product: Product
//}
//
//struct Product{
//    let name: String
//}
//
//enum VendingMachineError: Error {
//    case invalidSelection // нет в ассортименте
//    case outOfStock // нет в наличии
//    case insufficientFunds(coinsNeeded: Int) //мало денег
//}
//
//enum BuyError: Error {
//    case buyerNotFound
//}
//
//let favoriteSnacks = [
//    "Alice" : "Chips",
//    "Bob" : "Licorice",
//    "Eve" : "Pretzels",
//]
//
//func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws -> Product {
//    guard let snackName = favoriteSnacks[person] else {
//        throw BuyError.buyerNotFound
//    }
//    return try vendingMachine.vend(itemNamed: snackName)
//}
//
//class VendingMachine {
//    var inventory = [
//        "Candy Bar": Item(price: 12, count: 7, product: Product(name: "Candy Bar")),
//        "Chips": Item(price: 10, count: 4, product: Product(name: "Chips")),
//        "Pretzels": Item(price: 0, count: 11, product: Product(name: "Pretzels"))
//    ]
//
//    var coinsDeposited = 0
//
//    func vend(itemNamed name: String) throws -> Product {
//        guard let item = inventory[name] else {
//            throw VendingMachineError.invalidSelection
//        }
//
//
//    guard item.count > 0 else {
//        throw VendingMachineError.outOfStock
//    }
//
//    guard item.price <= coinsDeposited else {
//        throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
//    }
//
//    coinsDeposited -= item.price
//    var newItem = item
//    newItem.count -= 1
//    inventory[name] = newItem
//    print("Dispensing \(name)")
//    return newItem.product
//    }
//}
//
//
//let vendingMachine = VendingMachine()
//vendingMachine.vend(itemNamed: "Snikers")
//vendingMachine.vend(itemNamed: "Candy Bar")
//vendingMachine.vend(itemNamed: "Pretzels")

//let sell1 = vendingMachine.vend(itemNamed: "Snikers")
//let sell2 = vendingMachine.vend(itemNamed: "Candy Bar")
//let sell3 = vendingMachine.vend(itemNamed: "Pretzels")


//if let product = sell1.0 {
//    print("Мы купили: \(product.name)")
//} else if let error = sell1.1 {
//    print("Произошла ошибка: \(error.localizedDescription)")
//}

//do {
//    let sell = try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
//}
//catch VendingMachineError.invalidSelection {
//    print("Такого товара не существует")
//}
//catch VendingMachineError.insufficientFunds(let coinsNeeded) {
//    print("Введенная сумма недостаточна. Необхолимо ещё \(coinsNeeded) монет")
//}
//catch BuyError.buyerNotFound {
//    print("Покупатель не найден")
//}
//catch let error {
//    print(error.localizedDescription)
//}

//Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
//Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.

//РЕШЕНИЕ ЗАДАЧИ

// возможные ошибки при попытке оплатить кредиткой
//enum CreditCardOperationError: Error {
//    // ошибка: недостаточно средств на карте
//    case insufficientFunds (moneyNeeded: Double)
//    // ошибка: баланс карточки заморожен банков по каким-то причинам
//    case frozenBalance
//}
//
//// вещь, которую мы хотим приобрести, имеет цену
//struct thing {
//    var price: Double
//}
//
//class CreditCardOperation {
//    //зафиксированный лимит для этой карты
//    let limit: Double = -30000
//    // изначальный баланс
//    var balance: Double = 0
//    // начальное значение блокировки карты
//    var cardIsBlocked = false
//
//    // пытаемся приобрести вещь
//    func buySomething(thing: thing) throws {
//        guard cardIsBlocked == false else{
//            throw CreditCardOperationError.frozenBalance
//        }
//        // провека на возможность позволить купить себе эту вещь
//        guard thing.price <= (-limit + self.balance) else {
//            //рассчитывает необходимый остаток средств на карте с учётом лимита
//            if balance < 0 {
//                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit + balance)
//            } else {
//                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + limit - balance)
//            }
//        }
//        // списываем деньги за вещь с карты
//        balance = self.balance - thing.price
//    }
//
//    // функция для внесения какой-либо суммы денег
//    func depositeMoney (someMoney: Double) {
//        balance = self.balance + someMoney
//    }
//
//    // функция "узнай свой баланс"
//    func printBalance() {
//        print ("Баланс \(balance) рублей")
//    }
//
//    // банк может заблокировать нашу карту
//    func changeCardState(cardIsBlocked: Bool) {
//        switch cardIsBlocked {
//        case true:
//            self.cardIsBlocked = true
//        case false:
//            self.cardIsBlocked = false
//        }
//    }
//}
//
//// описания ошибок, чтобы упростить себе жизнь и вызов docatch()
//extension CreditCardOperationError: CustomStringConvertible {
//    var description: String {
//        switch self {
//        case .insufficientFunds(let moneyNeeded): return "У вас нет денег на карте для совершения оплаты. Ваш баланс: \(operation.balance) руб, необходимо: \(moneyNeeded) руб"
//        case .frozenBalance: return "Ваш счет заблокирован по каким-то причинам. За дополнительной информацией обратитесь, пожалуйста, в банк."
//        }
//    }
//}
//
////балуемся с  нашей картой
//let operation = CreditCardOperation()
//do {
//    try operation.buySomething(thing: .init(price: 890.7))
//} catch let error as CreditCardOperationError {
//    print(error.description)
//}
//operation.printBalance()
//operation.depositeMoney(someMoney: 10000)
//operation.printBalance()
//do {
//    try operation.buySomething(thing: .init(price: 70000))
//} catch let error as CreditCardOperationError {
//    print(error.description)
//}
//
//operation.printBalance()
//
//do {
//    try operation.buySomething(thing: .init(price: 39109.3))
//} catch let error as CreditCardOperationError {
//    print(error.description)
//}
//
//operation.printBalance()
//
//// банку не понравилось, что у нас такой отрицательный баланс и он заподозрил подозрительную активность по нашей карточке. Результат - баланс заморожен.
//operation.changeCardState(cardIsBlocked: true)
//
//// ничего не подозревая, мы пытаемся купить что-то на 90 рублей.
//do {
//    try operation.buySomething(thing: .init(price: 90))
//} catch let error as CreditCardOperationError {
//    print(error.description)
//}


// MARK: - Девятая задача

//Напишите программу, которая читает слово и печатает все буквы алфавита, которые не используются в этом слове.
//Учитываются только строчные буквы.
#warning("Вводим 1, 2, f - ошибка + русский алфавит")
//var alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "а", "в", "г", "д", "е", "ё", "ж", "з", "и", "й", "к", "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", "х", "ц", "ч", "ш", "щ", "ъ", "ы", "ь", "э", "ю", "я"]
////еёжзийклмнопрстуфхцчшщъыьэюя
//var flag  = false
//var inputWordd: String = ""
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//repeat {
//print("Введите слово:")
//    guard let inputWord = readLine(), inputWord.range(of: searchString, options: .regularExpression) != nil, isInt(text: inputWord) == nil else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//}
//    inputWordd = inputWord.lowercased()
//    flag = true
//} while !flag
//var outputWord = [Character]()
//for character in inputWordd {
//    if character.isLowercase {
//    outputWord.append(character)
//    } else {
//        continue
//    }
//}
//print(outputWord)
////затем нужно отфильтровать массив alphabet по маске массива outputWords
//var set = Set(outputWord)
//let entryMas = alphabet.subtracting(set).sorted()
//print(entryMas)
//
//
//func isInt(text: String) -> Int? {
//        guard let myHer = Int(text) else { return nil }
//        return myHer
//    }

// MARK: - Десятая задача
#warning("падение если нет цифр")
//Напишите программу, которая читает комбинацию букв и цифр и печатает первую цифру в ней. Гарантируется, что в комбинации есть хотя бы одна цифра.
//первый вариант решения через множества и объединение
//var alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
//var numbers: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
//
//print("Введите слово:")
//guard var inputWord = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//}
//
//var outputWord = [Character]()
//for character in inputWord {
//    if character.isNumber {
//    outputWord.append(character)
//    } else {
//        continue
//    }
//}
//if let word = outputWord.first {
//    print(word)
//} else {
//    print("Цифр нема")
//}

// MARK: - Одинадцатая задача

//Напишите программу, которая читает букву и печатает все предшествующие буквы английского алфавита.
#warning("не прошло тест при a")
//var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//
//var flag = false
//var inputWordd = ""
//repeat {
//    print("Введите букву:")
//    guard let inputWord = readLine(), (inputWord.range(of: searchString, options: .regularExpression) != nil), inputWord.count == 1  else {
//    print("Неверный ввод. Повторите попытку")
//   continue
//}
//    flag = true
//    inputWordd = inputWord
//} while !flag
//var item = 0
//if inputWordd.first == "a" {
//        print("a")
//        exit(0)
//}
//while alphabet[item] != inputWordd {
//    print(alphabet[item])
//    item += 1
//}
//
//func isInt(text: String) -> Bool {
//        guard let _ = Int(text) else { return false }
//        return true
//    }

// MARK: - Двенадцатая задача

 #warning("Не считаются цифры в слове + символы")
//Напишите программу, которая читает слово и печатает количество символов, встречающихся в нем только один раз.
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//var flag = false
//var inputWordd = ""
//repeat {
//print("Введите слово:")
//guard let inputWord = readLine() else {
//    print("Неверный ввод. Повторите попытку")
//continue
//}
//    flag = true
//    inputWordd = inputWord
//} while !flag
//inputWordd = inputWordd.lowercased()//для приравнивания строчных и заглавных
//
//var outputWord = [Character]()
//for character in inputWordd {
//    outputWord.append(character)
//}
//var endWord = [Character]()
//for item in 0...outputWord.count - 1 {
//    if endWord.contains(outputWord[item]){
//        continue
//    } else {
//        endWord.append(outputWord[item])
//    }
//}
//
//print(endWord.count)

// MARK: - Тринадцатая. КОРАБЛИ


//Есть игра, в которой игрокам нужно выставлять корабли на поле боя. Давайте создадим программу, чтобы выяснить, где можно разместить корабли.
//У нас есть поле с 5 строками ( X ) и 5   столбцами ( Y ), всего 25 ячеек. Напишите программу, которая считывает координаты ( X , Y ) трех кораблей размером с одну ячейку и печатает все доступные строки ( X ) и столбцы ( Y ) для новых кораблей.
//Новые корабли можно размещать только в свободных строках и столбцах, поэтому вам необходимо вывести номера строк и столбцов, в которых нет кораблей.
//Выведите строки ( X ) и столбцы ( Y ) в двух разных строках (список пустых строк в первой строке и список пустых столбцов в следующей строке).
//Все выходные координаты должны быть разделены пробелом . Не добавляйте лишние пробелы в конце строк вывода.
//
//Пример ввода 1:
//1 2
//2 3
//4 1
//Пример вывода 1:
//3 5
//4 5
//Пример ввода 2:
//1 3
//1 4
//1 2
//Пример вывода 2:
//2 3 4 5
//1 5
#warning("не прошло тест, нет проверки на занятость точки")
////создание двумерного массива 5х5
let size = 5
var gamePlace = Array(repeating: Array(repeating: 0, count: size), count: size)
func printMass(board: [[Int]]) {
    board.forEach({print($0)})
}
//gamePlace[2][2] = 1
printMass(board: gamePlace)

////1. Берем первую строку, разбиваем её на 2 части, переводим их в Int, сравниваем входят ли они в границы нашей области, если все ок, то идем к следующему вводу строки
////затем считываем значения позиций кораблей
for item in 0...9 {
    
    if item == 9 {
        print("Может быть уже правильно введешь?")
    }
    print("Введите первую координату первого корабля:")
    guard let positionWarship_x = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let x = positionWarship_x.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first1 = Int(x) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first1 else {
        print("Число не в диапазоне значений")
        continue
    }
    print("Введите вторую координату второго корабля:")
    guard let positionWarship_y = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let y = positionWarship_y.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first2 = Int(y) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first2 else {
        print("Число не в диапазоне значений")
        continue
    }
    let firstTuple: (Int, Int) = (first1, first2)
    if gamePlace[first1 - 1][first2 - 1] != 1 {
    change(gamePlace: &gamePlace, position: firstTuple)
    } else {
        print("Место занято, попробуйте еще раз")
        continue
    }
    if item == 9 {
        print("Умница, наконец смог")
        print(firstTuple)
    } else {
        print(firstTuple)
        printMass(board: gamePlace)
    }
    break
}

for item in 0...9 {
    
    if item == 9 {
        print("Может быть уже правильно введешь?")
    }
    print("Введите первую координату второго корабля:")
    guard let positionWarship_x = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let x = positionWarship_x.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first1 = Int(x) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first1 else {
        print("Число не в диапазоне значений")
        continue
    }
    print("Введите вторую координату второго корабля:")
    guard let positionWarship_y = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let y = positionWarship_y.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first2 = Int(y) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first2 else {
        print("Число не в диапазоне значений")
        continue
    }
    let firstTuple: (Int, Int) = (first1, first2)
    if gamePlace[first1 - 1][first2 - 1] != 1 {
    change(gamePlace: &gamePlace, position: firstTuple)
    } else {
        print("Место занято, попробуйте еще раз")
        continue
    }
    if item == 9 {
        print("Умница, наконец смог")
        print(firstTuple)
    } else {
        print(firstTuple)
        printMass(board: gamePlace)
    }
    break
}
for item in 0...9 {
    
    if item == 9 {
        print("Может быть уже правильно введешь?")
    }
    print("Введите первую координату третьего корабля:")
    guard let positionWarship_x = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let x = positionWarship_x.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first1 = Int(x) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first1 else {
        print("Число не в диапазоне значений")
        continue
    }
    print("Введите вторую координату третьего корабля:")
    guard let positionWarship_y = readLine() else {
        print("Неверный ввод. Повторите попытку")
        continue
    }
    let y = positionWarship_y.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
    guard let first2 = Int(y) else {
        print("Вы ввели не координаты")
        continue
    }
    guard 1...size ~= first2 else {
        print("Число не в диапазоне значений")
        continue
    }
    let firstTuple: (Int, Int) = (first1, first2)
    if gamePlace[first1 - 1][first2 - 1] != 1 {
    change(gamePlace: &gamePlace, position: firstTuple)
    } else {
        print("Место занято, попробуйте еще раз")
        continue
    }
    if item == 9 {
        print("Умница, наконец смог")
        print(firstTuple)
    } else {
        print(firstTuple)
        printMass(board: gamePlace)
    }
    break
}
//далее надо заполнить полученные значения в исходную таблицу, заменяя нули на единицы
func change(gamePlace: inout [[Int]], position: (Int, Int) ) {
    for (i, row) in gamePlace.enumerated() {
        if i == position.0 - 1 {
            for (j, _) in row.enumerated() {
                if j == position.1 - 1 {
                    gamePlace[position.0 - 1][position.1 - 1] = 1
                }
            }
        }
    }
}
checkFreePlace(gamePlace: &gamePlace)

////затем мне нужно проверить в цикле свободные строки и свободные столбцы
func checkFreePlace (gamePlace: inout [[Int]]) {
    //тут проходимся по строкам
    for (i, row) in gamePlace.enumerated() {//строки
        var count = 0
        for (j, _) in row.enumerated() {//столбцы
            if gamePlace[i][j] == 0 {
                count += 1
                if count == 5{
                    print("Строка \(i + 1) свободна")
                    count = 0
                }
            }
        }
    }

    for i in 0..<size {
        var count = 0
        for (_, row) in gamePlace.enumerated() {
            if row[i] == 0 {
                count += 1
                if count == 5{
                    print("Столбец \(i + 1) свободен")
                    count = 0
                }
            }
        }
    }
}

// MARK: - Четырнадцатая. ПАРОЛЬ



//Пароль трудно взломать, если он содержит не менее A прописных букв, не менее B строчных букв, не менее C цифр и содержит ровно N символов. Также пароль не может содержать два или более одинаковых символа, идущих друг за другом. Для заданных чисел A, B, C, N необходимо вывести пароль, соответствующий этим требованиям.
//Гарантируется, что A, B, C и N неотрицательные целые числа и A + B + C <= N. Имейте в виду, что любой параметр может быть равен нулю. Это означает, что ничего страшного, если пароль не содержит символов такого типа.
//
//Пример ввода 1:
//3 4 1 8
//Пример вывода 1:
//PaSsw0rD
//
#warning("не прошло тест")
//var lowCaseLetterz = 0
//var upCaseLettersz = 0
//var countNumbersz = 0
//var countPassword = 0
//var enterLengthPasswordz = 0
//var flag = false
//
//repeat {
//    print("Введите минимальное количество прописных букв")
//    guard let enterLowCaseLetters = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    guard let lowCaseLetters = Int(enterLowCaseLetters), lowCaseLetters >= 0 else {
//        print("Вы ввели не длину пароля")
//        continue
//    }
//    lowCaseLetterz = lowCaseLetters
//    countPassword += lowCaseLetters
//    flag = true
//} while !flag
//flag = false
//
//repeat {
//    print("Введите минимальное количество заглавных букв")
//    guard let enterUpCaseLetters = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    guard let upCaseLetters  = Int(enterUpCaseLetters), upCaseLetters >= 0 else {
//        print("Вы ввели не длину пароля")
//        continue
//    }
//    upCaseLettersz = upCaseLetters
//    countPassword += upCaseLetters
//    flag = true
//} while !flag
//
//flag = false
//
//repeat {
//    print("Введите минимальное количество цифр")
//    guard let enterCountNumbers = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    guard let countNumbers  = Int(enterCountNumbers), countNumbers >= 0 else {
//        print("Вы ввели не длину пароля")
//        continue
//    }
//    countNumbersz = countNumbers
//    countPassword += countNumbers
//    flag = true
//} while !flag
//
//flag = false
//repeat{
//    print("Введите размер пароля")
//    print("Размер пароля не может быть меньше \(countPassword)")
//    guard let enterLengthPassword = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    //две проверки на то, что введена именно цифра
//    guard let lengthPassword  = Int(enterLengthPassword), lengthPassword >= countPassword else {
//        print("Введите корректную информацию")
//        continue
//    }
//    enterLengthPasswordz = lengthPassword
//    flag = true
//} while !flag
//
////метод для проверки есть ли рядом стоящие элементы
//func isSame(mass: String) -> Bool {
//    var flag = false
//    var outputWord = [Character]()
//    for character in mass {
//        outputWord.append(character)
//    }
//    if outputWord.count == 1 {
//        return false
//    } else {
//        for item in 0..<outputWord.count - 1 {
//            //        print("Сравниваю элемент \(outputWord[item + 1]) с \(outputWord[item])")
//            if outputWord[item + 1] == outputWord[item]{
//                flag = true
//                break
//            } else {
//                flag = false
//            }
//        }
//        return flag
//    }
//}
//
//print("Итоговый пароль: \(randomString(lowCaseLetters: lowCaseLetterz, upCaseLetters: upCaseLettersz, countNumbers: countNumbersz, enterLengthPassword: enterLengthPasswordz))")
//
////для генерации каждого из блоков делаем отдельный словарь из заглавных, строчных и цифр и генерируем рандомно по частям его String((0..<length).map{ _ in letters.randomElement()! })
////затем конкатенацией объединяем пароль и в цикле мешаем его элементы до тех пор пока рядом не будут стоять одинаковые элементы
//func randomString(lowCaseLetters: Int, upCaseLetters: Int, countNumbers: Int, enterLengthPassword: Int) -> String {
//    var endString = ""
//    let lowLetters = "abcdefghijklmnopqrstuvwxyz"
//    let upLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//    let numbers = "0123456789"
//    let additionalAlphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
//    var randomLowLetters = ""
//
//    randomLowLetters = String((0..<lowCaseLetters).map{ _ in lowLetters.randomElement()! })
//    for _ in 0...1000 {
//        if randomLowLetters.count == 0 {
//            break
//        }
//        if isSame(mass: randomLowLetters) {
////            print("Не получается сделать уникальный пароль. Пробуем еще раз")
//            randomLowLetters = String((randomLowLetters).map{ _ in lowLetters.randomElement()! })
////            print("Перемешиваю")
//            continue
//        } else {
////            print("Я сделал \(randomLowLetters)")
//            break
//        }
//    }
//    var randomUpLetters = ""
//    randomUpLetters = String((0..<upCaseLetters).map{ _ in upLetters.randomElement()! })
//    for _ in 0...1000 {
//        if randomUpLetters.count == 0 {
//            break
//        }
//        if isSame(mass: randomUpLetters) {
////            print("Не получается сделать уникальный пароль. Пробуем еще раз")
//            randomUpLetters = String((randomUpLetters).map{ _ in upLetters.randomElement()! })
//            print("Перемешиваю")
//            continue
//        } else {
////            print("Я сделал \(randomUpLetters)")
//            break
//        }
//    }
//    var randomNumbers = ""
//    randomNumbers = String((0..<countNumbers).map{ _ in numbers.randomElement()! })
//    for _ in 0...1000 {
//        if randomNumbers.count == 0 {
//            break
//        }
//        if isSame(mass: randomNumbers) {
////            print("Не получается сделать уникальный пароль. Пробуем еще раз")
//            randomNumbers = String((randomNumbers).map{ _ in numbers.randomElement()! })
////            print("Перемешиваю")
//            continue
//        } else {
////            print("Я сделал \(randomNumbers)")
//            break
//        }
//    }
//    //тут мы добавляем доп строки случайные из всего массива словаря
//    var randomAdditional = ""
//    randomAdditional = String((0..<enterLengthPassword - countNumbers - upCaseLetters - lowCaseLetters).map{ _ in additionalAlphabet.randomElement()! })
//    for _ in 0...1000 {
//        if randomAdditional.count == 0 {
//            break
//        }
//        if isSame(mass: randomAdditional) {
////            print("Не получается сделать уникальный пароль. Пробуем еще раз")
//            randomAdditional = String((randomAdditional).map{ _ in additionalAlphabet.randomElement()! })
////            print("Перемешиваю")
//            continue
//        }else {
////            print("Я сделал \(randomAdditional)")
//            break
//        }
//    }
//    endString = randomLowLetters + randomUpLetters + randomNumbers + randomAdditional
//    return endString
//}


// MARK: - Пятнадцатая задача



//Вы хотите взломать сайт и получить все доступные параметры. Выведите их « ключ : значение ». Если параметр не имеет значения, выведите « not found ».
//Если вы найдете пароль (параметр pass), вы должны еще раз вывести его значение после всех параметров, но уже с ключом password . Если URL-адрес не содержит параметра pass , ничего не печатайте после параметров. Но если присутствует параметр pass , его значение не может быть пустым
//Примечание . Порядок параметров должен быть таким же, как в URL.
//Совет : изучите структуру URL.
//Пример ввода 1:
//https://target.com/index.html?pass=12345&port=8080&cookie=&host=localhost
//Пример вывода 1:
//pass : 12345
//port : 8080
//cookie : not found
//host : localhost
//password : 12345
//Пример ввода 2:
//https://target.com/index.html?port=8080&cookie=&host=localhost
//Пример вывода 2:
//port : 8080
//cookie : not found
//host : localhost

//let url = URL(string: "https://chickenhouse.ru/?iikomenu=&stoplist=yes&pass=123qwe&location=tver")!
//
//let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
//if let components = components {
//    if let queryItems = components.queryItems {
//        for queryItem in queryItems {
//            if queryItem.value == "" {
//                print("\(queryItem.name): not found")
//            } else {
//                print("\(queryItem.name): \(queryItem.value!)")
//            }
//        }
//        for queryItem in queryItems {
//            if queryItem.name == "pass" && queryItem.name != "password" {
//                print("password: \(queryItem.value!)")
//            } else {
//                continue
//            }
//        }
//    }
//}

// MARK: - Шестнадцатая задача


//Все буквы английского алфавита делятся на гласные и согласные.
//Гласные: a, e, i, o, u, y.
//Остальные буквы согласные.
//Слово считается благозвучным, если в нем нет трех и более гласных или согласных подряд. В противном случае он считается несогласованным.
//Ваша задача состоит в том, чтобы из неблагозвучных слов составить благозвучные. В слово можно вставлять любые буквы. Выведите минимальное количество символов, необходимое для составления благозвучного слова из заданного слова.
//Например, слово «schedule» считается неблагозвучным, потому что в нем три согласных подряд: «sch».
//Чтобы создать благозвучное слово, вам нужно добавить любую гласную между «s» и «c» или между «c» и «h».
//
//Sample Input 1:
//schedule
//Sample Output 1:
//1
//Sample Input 2:
//garage
//Sample Output 2:
//0
//Sample Input 3:
//player
//Sample Output 3:
//1
//Sample Input 4:
//biiiiig
//Sample Output 4:
//2

//func isVowel(c: Character) -> Bool {
//    let vowels: [Character] = ["a", "e", "i", "o", "u", "y"]
//    var flag = false
//    for item in vowels {
//        if item == c{
//            flag = true
//        }
//    }
//    return flag
//}
//
//func checkWord(word: String) {
//    var vowels = 0
//    var consonants = 0
//    var i = 0
//    var outputWord = [Character]()
//    for character in word {
//        if character.isLowercase {
//            outputWord.append(character)
//        }
//    }
//    for item in 0..<outputWord.count {
//        if isVowel(c: outputWord[item]) {
//            vowels += 1
//            consonants = 0
//        } else {
//            consonants += 1
//            vowels = 0
//        }
//        if consonants == 3 || vowels == 3 {
//            i += 1
//            if consonants == 3 {
//                outputWord.insert("o", at: item)
//            } else {
//                outputWord.insert("x", at: item)
//            }
//            consonants = 0
//            vowels = 0
//        }
//    }
//    print(i)
//}
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//var flag = false
//var baseWordd = ""
//repeat {
//    print("Введите слово для анализа:")
//    guard let baseWord = readLine(), baseWord.range(of: searchString, options: .regularExpression) != nil else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    baseWordd = baseWord
//    flag = true
//} while !flag
//checkWord(word: baseWordd)

// MARK: - Семнадцатая задача


//
//Напишите программу, которая читает строку s и целое число n , а затем перемещает первые n символов s в конец строки. Программа должна вывести измененную строку. Если n больше длины строки, он должен вывести строку без изменений.
//Формат входных данных
//Единственная входная строка содержит s и n , разделенные пробелом.
//
//Sample Input 1:
//Hello 3
//Sample Output 1:
//loHel
#warning("не воспринимает -1")
//var flag = false
//var numberr = 0
//var wordd = ""
//repeat {
//    print("Введите слово и цифру через пробел")
//    guard let enterLine = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    let enterWord = enterLine.components(separatedBy: " ")
//    if enterWord[0] == enterLine {
//        continue
//    }
//    let word = enterWord[0]
//    guard let number = Int(enterWord[1]), number >= 0 else {
//        print("Ошибка")
//        continue
//    }
//    flag = true
//    wordd = word
//    numberr = number
//} while !flag
////программа проверяет длину слова, если все ок, то копирует в переменную часть слова, затем удаляет в изначальном все, а потом конкатенацией складывает в print'е все
//
////ну и нужно сделать метод по итогу
//
//func cutWord(word: String, number: Int) {
//    let lenght = word.count
//    if lenght > number {
//        print(word.suffix(lenght - number) + word.prefix(number))
//    } else {
//        print(word)
//    }
//}
//cutWord(word: wordd, number: numberr)

// MARK: - Восемьнадцатая задача

//Напишите программу, которая читает строку, а затем выводит строку без среднего символа, если длина нечетная, и без двух средних символов, если длина четная.
//
//Sample Input 1:
//Hello
//Sample Output 1:
//Helo
//Sample Input 2:
//abcd
//Sample Output 2:
//ad
#warning("обработка пробелом")
//print("Введите слово")
//    guard let enterLine = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//    }
//let clearText = enterLine.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
//print(clearText)
//if clearText.count % 2 == 0 {
//    print("Четный")
//    print(clearText.prefix(clearText.count / 2 - 1) + clearText.suffix(clearText.count / 2 - 1))
//
//} else {
//    print("Нечетный")
//    print(clearText.prefix(clearText.count / 2) + clearText.suffix(clearText.count / 2))
//}




// MARK: - Девятьнадцатая задача

//Напишите программу, которая находит частоту вхождения подстроки в заданную строку.
//Формат входных данных
//Первая строка ввода содержит строку, вторая — подстроку.
//
//Sample Input 1:
//hello there
//the
//Sample Output 1:
//1
//Sample Input 2:
//hello yellow jello
//ll
//Sample Output 2:
//3
#warning("обработка пробелов")
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//var flag = false
//var enterLinee = ""
//var wordd = ""
//repeat {
//    print("Введите первую строку")
//    guard let enterLine = readLine(), enterLine.range(of: searchString, options: .regularExpression) != nil else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    let clearText_1 = enterLine.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
//    print("Введите вторую строку")
//    guard let word = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    let clearText_2 = word.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
//    flag = true
//    enterLinee = clearText_1
//    wordd = clearText_2
//} while !flag
//let tok = enterLinee.components(separatedBy: wordd)
//print(tok.count - 1)

// MARK: - Двадцатая задача

//Напишите программу, которая читает строку и выводит true только тогда, когда буквы этой строки образуют подстроку упорядоченного английского алфавита, например, «abc», «xy», «pqrst».
//В противном случае он должен распечатать false.
//Примечание: строка может состоять из одного символа. Предположим, что пустая строка является подстрокой алфавита.
//
//Sample Input 1:
//abc
//Sample Output 1:
//true
//Sample Input 2:
//bce
//Sample Output 2:
//false
//
#warning("пробелы")
//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//let alphabet = "abcdefghijklmnopqrstuvwxyz"
//var flag = false
//var enterLinee = ""
//repeat {
//print("Введите строку")
//guard let enterLine = readLine()?.lowercased(), enterLine.range(of: searchString, options: .regularExpression) != nil else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    let clearText = enterLine.replacingOccurrences(of: " ", with: "", options: .literal, range: nil)
//    flag = true
//    enterLinee = clearText
//} while !flag
//print(enterLinee.first!)//тут мы нашли перый элемент введенной фразы
//
////ниже нам нужно найти индекс этой найденной буквы и вывести диапазон от этой буквы длиной с фразу и сравнить с исходным
//var pos = 0
//
//if let idx = alphabet.firstIndex(of: enterLinee.first!) {
//    pos = alphabet.distance(from: alphabet.startIndex, to: idx)
//    print("Найдено \(enterLinee.first!) на позиции \(pos - 1)")
//}
//else {
//    print("Не найдено")
//}
//
//var newAlphabet = [Character]()
//for character in alphabet {
//    newAlphabet.append(character)
//    }
//var charEnterLine = [Character]()
//for character in enterLinee {
//    charEnterLine.append(character)
//    }
//let endAlphabet = newAlphabet[pos...pos + charEnterLine.count - 1]
//print(String(endAlphabet))
//print(String(charEnterLine))
//if String(endAlphabet) == String(charEnterLine) {
//    print(true)
//} else {
//    print(false)
//}


// MARK: - Двадцать первая задача

//Дано число N с четным количеством цифр. Если сумма первой половины цифр равна сумме второй половины цифр, то это число считается счастливым. Для заданного числа выведите «YES», если это число удачное, иначе выведите «NO».
//
//Sample Input 1:
//12344321
//Sample Output 1:
//YES
//Sample Input 2:
//125322
//Sample Output 2:
//NO

//var enterLineGlobal = ""
//var flag = false
//repeat {
//print("Введите число")
//    guard let enterLine = readLine(), isInt(text: enterLine) else {
//    print("Неверный ввод. Повторите попытку")
//    continue
//}
//if enterLine.count % 2 == 0{
//    enterLineGlobal = enterLine
//} else {
//    print("Введите число четной длины")
//}
//    flag = true
//} while !flag
//
//let firstPart = enterLineGlobal.utf8.count
//
////тут мы делаем массив элементов из числа
//
//let integerDigits = getDigitsFromString(for: enterLineGlobal)
//
//print(integerDigits)
//var sum1 = 0
//var sum2 = 0
////ниже два цикла с одной стороны и с другой
//for item in  0..<integerDigits.count / 2 {
//    sum1 += integerDigits[item]
//}
//print(sum1)
//for item in firstPart / 2..<firstPart {
//    sum2 += integerDigits[item]
//}
//print(sum2)
//if sum1 == sum2 {
//    print("Число счастливое")
//} else {
//    print("Число не счастливое")
//}
//
//func isInt(text: String) -> Bool {
//        guard let _ = Int(text) else { return false }
//        return true
//    }
//
//func getDigitsFromString(for string: String) -> [Int]{
//        let stringInt = Array(string)
//        var array = [Int]()
//        for i in stringInt {
//            if let i = Int(String(i)) {
//                array.append(i)
//            }
//        }
//        return array
//    }


// MARK: - Двадцать вторая задача

//Напишите программу, которая читает строку и проверяет, является ли она палиндромом, т.е. читает одинаково как слева направо, так и справа налево.
//Программа должна вывести «yes» , если строка является палиндромом, и «no» в противном случае.
//
//Sample Input 1:
//kayak
//Sample Output 1:
//yes

//let searchString = #"^([\p{L},.'’-]+(\s|$))+"#
//var flag = false
//var enterLinee = ""
//repeat {
//print("Введите строку")
//    guard let enterLine = readLine(), enterLine.range(of: searchString, options: .regularExpression) != nil else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//    flag = true
//    enterLinee = enterLine
//} while !flag
//if enterLinee.prefix(enterLinee.count/2) == String(enterLinee.suffix(enterLinee.count/2).reversed()) {
//    print(true)
//} else {
//    print(false)
//}

// MARK: - Двадцать третья задача

//Павел любит ездить на общественном транспорте и после получения билета сразу же проверяет, попался ли ему счастливчик. Билет считается счастливым, если сумма первых трех чисел в этом билете совпадает с суммой трех последних чисел в том же билете.
//Однако Павел плохо считает в своей голове. Поэтому он просит вас написать программу, которая будет проверять равенство сумм и выводить «Счастливо», если суммы совпадают, и «Обычно», если суммы различаются.
//В качестве входных данных для программы предоставляется строка из шести цифр.
//Вам нужно распечатать только слово «Lucky» или «Regular» с большой буквы (без кавычек).
//
//Sample Input 1:
//090234
//Sample Output 1:
//Lucky
//Sample Input 2:
//123456
//Sample Output 2:
//Regular

//var enterLineGlobal = ""
//var flag = false
//repeat {
//print("Введите число")
//    guard let enterLine = readLine(), isInt(text: enterLine) else {
//    print("Неверный ввод. Повторите попытку")
//    continue
//}
//if enterLine.count % 2 == 0{
//    enterLineGlobal = enterLine
//} else {
//    print("Введите число четной длины")
//}
//    flag = true
//} while !flag
//
//let firstPart = enterLineGlobal.utf8.count
//
////тут мы делаем массив элементов из числа
//
//let integerDigits = getDigitsFromString(for: enterLineGlobal)
//
//print(integerDigits)
//var sum1 = 0
//var sum2 = 0
////ниже два цикла с одной стороны и с другой
//for item in  0..<integerDigits.count / 2 {
//    sum1 += integerDigits[item]
//}
//print(sum1)
//for item in firstPart / 2..<firstPart {
//    sum2 += integerDigits[item]
//}
//print(sum2)
//if sum1 == sum2 {
//    print("Число счастливое")
//} else {
//    print("Число не счастливое")
//}
//
//func isInt(text: String) -> Bool {
//        guard let _ = Int(text) else { return false }
//        return true
//    }
//
//func getDigitsFromString(for string: String) -> [Int]{
//        let stringInt = Array(string)
//        var array = [Int]()
//        for i in stringInt {
//            if let i = Int(String(i)) {
//                array.append(i)
//            }
//        }
//        return array
//}




// MARK: - Двадцать четвертая. ИГРА
#warning("проверка на - + 0, дефолт сломан")
////Выполнить Проект ‘Соедини Четыре’:
//var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//var playersCount: Int = 0
//var players: [(String, String, Int)] = []
//print("Connect four")
//var flag = false
//repeat {
//print("Введите количество игроков:")
//guard let count = readLine(), let playerzCount = Int(count), playerzCount != 0 && playerzCount < alphabet.count else {
//    print("Error")
//    continue
//}
//    flag = true
//    playersCount = playerzCount
//} while !flag
//flag = false
//for i in 0..<playersCount {
//    print("Player's name:")
//    if let playerName = readLine() {
//        players.append((playerName, alphabet[i], 0))
//    }
//}
//print("Players: \(players)")
//
//var globalRows = 0
//var globalColumns = 0
//var enterBoardDimensions = [String]()
//var first = 0
//var rows = 0
//var columns = 0
//let diapazon = [5, 6, 7, 8, 9]
//repeat {
//    var flag = false
//    var boardDimensions = ""
//    //тут проверка, что это числа
//    repeat {
//    print("Set the board dimensions (Rows x Coloums)")
//    print("Press Enter for default (6 x 7)")
//        //проверка того, действительно ли это числа
//    guard let boardDimensionz = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        continue
//    }
//        let enterBoardDimensions = boardDimensionz.components(separatedBy: " x ")
//        guard let first = enterBoardDimensions.first else {
//            continue
//        }
//        guard let last = enterBoardDimensions.last else {
//            continue
//        }
//        let firstInt = isInt(text: first)
//        let lastInt = isInt(text: last)
//        if firstInt != nil && lastInt != nil {
//            flag = true
//        } else {
//            continue
//        }
//        boardDimensions = boardDimensionz
//    } while !flag
//
//
//    if boardDimensions != "" {
//        enterBoardDimensions = boardDimensions.components(separatedBy: " x ")
//        rows = Int(enterBoardDimensions.first!)!
//        print(Int(enterBoardDimensions.first!)!)
//        columns = Int(enterBoardDimensions.last!)!
//        print(Int(enterBoardDimensions.last!)!)
//        if let first = enterBoardDimensions.first, let Rows = Int(first), Rows <= 9, Rows >= 5 {
//            if let last = enterBoardDimensions.last, let Columns = Int(last), Columns <= 9, Columns >= 5 {
//                globalRows = Rows
//                globalColumns = Columns
//            } else {
//                print("Board should be from 5 to 9")
//            }
//        } else {
//            print("Board should be from 5 to 9")
//        }
//    } else {
//        rows = 6
//        columns = 7
//        break
//    }
//} while !(diapazon.contains(rows)) || !(diapazon.contains(columns))
//print("\(rows) x \(columns) board\n")
//var countOfGames = 1
//repeat {
//print("Введите количество игр")
//    guard let countOfGamez = readLine(), let count = isInt(text: countOfGamez) else {
//    print("Неверный ввод. Повторите попытку")
//    continue
//}
//    flag = true
//    countOfGames = count
//} while !flag
//
//print("Количество игр: \(countOfGames)")
//var gamePlace = Array(repeating: Array(repeating: " ", count: rows * 2 + 1), count: columns + 2)//по горизонтали делаем в два раза больше + 1 поле, чтобы разместить в массиве границы и элементы. По вертикали
//var step = 0
//var realCountOfGames = 0 //счетчик игр
//var isGameOverFlag = false
//repeat {
//    isGameOverFlag = false
//    print("Игра №\(realCountOfGames + 1)")
//    gamePlace = Array(repeating: Array(repeating: " ", count: rows * 2 + 1), count: columns + 2)
//    createGamePlace(board: &gamePlace)
//    printGamePlace(board: gamePlace)
//    while !isGameOverFlag {
//        repeat {
//            for player in players {
//                var flag = true
//                while flag {
//                    var enterFlag = false
//                    var stepzz = ""
//                    repeat{
//                    print("\(player.0)'s turn:")
//                        guard let stepz = readLine(), isInt(text: stepz) != nil, let number = isInt(text: stepz), number < columns - 1 else {
//                        print("Неверный ввод. Повторите попытку")
//                       continue
//                    }
//                        enterFlag = true
//                        stepzz = stepz
//                    } while !enterFlag
//
//                    guard let enterSteps = Int(stepzz) else { exit(0) }
//                    step = enterSteps
//                    if stepzz == "end" {
//                        print("Game over!")
//                        isGameOverFlag = true
//                        flag = false
//                        break
//                    } else if gamePlace[gamePlace.startIndex + 1][step * 2 - 1] != " " {
//                        print("Column \(step) is full")
//                        flag = true
//                    } else {
//                        insertPiece(colomn: step, piece: player.1)
//                        if checkWin(gamePlace: &gamePlace) {
//                            printGamePlace(board: gamePlace)
//                            print("ВЫИГРЫШ!")
//                            print("Игрок \(player.0) победил")
//                            addReward(name: player.0, countRewards: 2)
//                            playerTable()
//                            print("Конец игры!")
//                            flag = false //после этого нужно выкинуть вообще из цикла for
//                            isGameOverFlag = true
//                            break
//                        }
//                        if !isGameOver(board: gamePlace) {
//                            print("доска заполнена")
//                            print("Конец игры!")
//                            isGameOverFlag = true
//                            flag = false
//                            break
//                        }
//                        printGamePlace(board: gamePlace)
//                        flag = false
//                    }
//                }
//                if isGameOverFlag {
//                    realCountOfGames += 1
//                    break
//                }
//            }
//            break
//        } while !isGameOverFlag
//    }
//} while countOfGames > realCountOfGames
//
//func playerTable() {
//    for player in players {
//        print("Имя: \(player.0). Знак: \(player.1). Колличество баллов: \(player.2)")
//    }
//}
//
//func addReward(name: String, countRewards: Int) {
//    for i in 0..<players.count {
//        if players[i].0 == name {
//            players[i].2 += countRewards
//        }
//    }
//}
//
////метод, который принимает в себя столбец и символ, который нужно вставить
//func insertPiece(colomn: Int, piece: String) {
//    for i in stride(from: gamePlace.count - 2, through: 1, by: -1) {
//        if gamePlace[i][colomn * 2 - 1] == " " {
//            gamePlace[i][colomn * 2 - 1] = piece
//            step = 0
//            break
//        }
//    }
//}
//
//func isGameOver(board: [[String]]) -> Bool {
//    for (i, row) in board.enumerated() { //строки
//        for (j, _) in row.enumerated() { //столбцы
//            if i == 1 && board[i][j] == " " {
//                return false
//            } else {
//                return true
//            }
//        }
//    }
//    return false
//}
//func printGamePlace(board: [[String]]) {
//    for (i, row) in board.enumerated() { //строки
//        for (j, _) in row.enumerated() { //столбцы
//                    print(board[i][j], terminator: " ")
//                }
//        print("")
//            }
//        }
//
//func createGamePlace(board: inout [[String]]) {
//    for (i, row) in board.enumerated() { //строки
//        for (j, _) in row.enumerated() { //столбцы
//            if i == 0 && j % 2 == 0 && j < rows * 2 { // здесь мы заполняем первую строку номерами столбцов
//                board[i][j + 1] = "\((j + 1) / 2 + 1)"
//            } else if i == board.endIndex - 1 { //заполняем последнюю строку =
//                if j <= rows + 6 {
//                board[i][j] = "\u{003D}" // =
//                }
//            } else //заполняем все остальное через одну строку ‖
//                if j % 2 == 0  && i != 0 {
//                    board[i][j] = "\u{2016}"// ‖
//                }
//            }
//        }
//    }
////проверяем выиграл ли какой из участников
//func checkWin(gamePlace: inout [[String]]) -> Bool {
//    //    тут проходимся по столбцам и смотрим одинаковые строки
//    for (i, row) in gamePlace.enumerated() {//строки
//        var count = 0
//        var icon = ""
//        if i != 0 && i != gamePlace.endIndex - 1 {
//            for (j, _) in row.enumerated() {//столбцы
//                if gamePlace[i][j] != "\u{2016}" && gamePlace[i][j] != " " {
//                    if j == 1 {
//                        icon = gamePlace[i][j]
//                        count += 1
//                    } else {
//                        if icon == gamePlace[i][j] {
//                            count += 1
//                        } else {
//                            icon = gamePlace[i][j]
//                            count = 1
//                        }
//                    }
//                    if count == 4 {
//                        return true
//                    }
//                } else {
//                    continue
//                }
//            }
//        }
//    }
//    //тут проходимся по строкам и смотрим одинаковые столбцы
//    for j in 1..<columns {
//        var icon = ""
//        var count = 0
//        for i in stride(from: gamePlace.count - 2, through: 1, by: -1) {
//            if i != 0 && i != gamePlace.endIndex - 1 {
//                if gamePlace[i][j] != "\u{2016}" && gamePlace[i][j] != " " {
//                    if i == gamePlace.endIndex - 2 {
//                        icon = gamePlace[i][j]
//                        count += 1
//                    } else {
//                        if icon == gamePlace[i][j] {
//                            count += 1
//                        } else {
//                            icon = gamePlace[i][j]
//                            count = 1
//                        }
//                    }
//                    if count == 4 {
//                        return true
//                    }
//                } else {
//                    continue
//                }
//            }
//        }
//    }
//    return false
//}
//
//func isInt(text: String) -> Int? {
//        guard let myHer = Int(text) else { return nil }
//        return myHer
//    }
