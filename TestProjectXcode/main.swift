import Foundation
// MARK: - Первая задача

//----------Первое задание-----------
//Решить квадратное уравнение.

//первое решение
//quadraticEquation(a: 1, b: -1, c: 0)
//quadraticEquation(a: 9, b: 6, c: 1) //D = 0
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
//
//
//print("Введите сумму вклада:")
//guard let inputSum = readLine(),
//    let sum = Double(inputSum) else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//}
//    print("Введите процентную ставку:")
//guard let inputPercent = readLine(),
//    let percent = Double(inputPercent) else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//}
//
//print("Сумма вклада через \(year) лет будет равна: \(bankDeposit(sum: sum, percent: percent, year: year))")
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
//Написать функцию, которая определяет, четное число или нет.

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
//побольше методов дернуть

// MARK: - Пятая задача

//Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//Создать два класса, имплементирующих протокол «Car»: tunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».
//Создать несколько объектов каждого класса. Применить к ним различные действия.
//Вывести сами объекты в консоль.

//protocol CarProtocol {
//    var horsePower: Int? { get }
//    func openTrunk()
//    func openWindows()
//    func onEngine()
//}
//
//protocol CustomStringConvertible {
//    var brandName: String { get }
//}
//
//extension Car: CarProtocol {
//    var horsePower: Int? {
//
//    }
//
//    func openTrunk() {
//        <#code#>
//    }
//
//    func openWindows(){
//
//    }
//    func onEngine(){
//
//    }
//}
//class Car {
//
//}
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
//    var horsePower: Int?
//    var volumeTank: Int?
//    func openTrunk() {
//        print("Багажник открыт")
//    }
//}
//
//class sportCar : Car {
//    var horsePower: Int?
//    var clearance: Int?
//    func openTrunk() {
//        print("Багажник открыт")
//    }
//}
//
//var firstCar = sportCar().brandName
//var secondCar = tunkCar().brandName

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

//var alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//print("Введите слово:")
//
//guard var inputWord = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//}
//var outputWord = [Character]()
//for character in inputWord {
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
//print(entryMas[0]) //выводим первый элемент множества


// MARK: - Десятая задача

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
//print(outputWord[0])

// MARK: - Одинадцатая задача

//Напишите программу, которая читает букву и печатает все предшествующие буквы английского алфавита.

//var alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//
//print("Введите букву:")
////тут я пытаюсь сделать логику проверки на количество символов в строке и действительно ли единственный символ это String
////var inputWord: String?
////for _ in 0...9 {
////    guard let inputWord = readLine() else {
////        print("Неверный ввод. Повторите попытку")
////        exit(0)
////    }
////    if inputWord.count == 1 && !isInt(text: inputWord) {
////        break
////    } else {
////        print("Не корректный ввод, повторите")
////        continue
////    }
////}
////дальше добавляем проверку на то, что вообще было введено и чистим, если ввели цифры и лишние буквы
//
//guard let inputWord = readLine() else {
//    print("Неверный ввод. Повторите попытку")
//    exit(0)
//}
//
//var item = 0
//while alphabet[item] != inputWord {
//    print(alphabet[item])
//    item += 1
//}
//
//func isInt(text: String) -> Bool {
//        guard let _ = Int(text) else { return false }
//        return true
//    }

// MARK: - Двенадцатая задача


//Напишите программу, которая читает слово и печатает количество символов, встречающихся в нем только один раз.

//print("Введите слово:")
//guard var inputWord = readLine() else {
//    print("Неверный ввод. Повторите попытку")
//    exit(0)
//}
//inputWord = inputWord.lowercased()//для приравнивания строчных и заглавных
//
//var outputWord = [Character]()
//for character in inputWord {
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

// MARK: - Тринадцатая задача


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

//создание двумерного массива 5х5
//let size = 5
//var gamePlace = Array(repeating: Array(repeating: 0, count: size), count: size)
//func printMass(board: [[Int]]) {
//    board.forEach({print($0)})
//}
//printMass(board: gamePlace)
////1. Берем первую строку, разбиваем её на 2 части, переводим их в Int, сравниваем входят ли они в границы нашей области, если все ок, то идем к следующему вводу строки
////затем считываем значения позиций кораблей
//print("Введите координаты первого корабля:")
//for item in 0...9 {
//    if item == 9 {
//        print("Может быть уже правильно введешь?")
//    }
//    guard let positionWarship_1 = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//    }
//    let separatePosition_1 = positionWarship_1.components(separatedBy: " ")
//    //две проверки на то, что введены именно цифры
//    guard let first1 = Int(separatePosition_1[0]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard let first2 = Int(separatePosition_1[1]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard 1...size ~= first1 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//    guard 1...size ~= first2 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//    let firstTuple: (Int, Int) = (first1, first2)
//    change(gamePlace: &gamePlace, position: firstTuple)
//    if item == 9 {
//        print("Умница, наконец смог")
//        print(firstTuple)
//    } else {
//        print(firstTuple)
//        printMass(board: gamePlace)
//    }
//    break
//}

//print("Введите координаты второго корабля:")
//for _ in 0...9 {
//
//    guard let positionWarship_2 = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//    }
//    let separatePosition_2 = positionWarship_2.components(separatedBy: " ")
//    //две проверки на то, что введены именно цифры
//    guard let second1 = Int(separatePosition_2[0]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard let second2 = Int(separatePosition_2[1]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard 1...size ~= second1 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//    guard 1...size ~= second2 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//
//    let secondTuple: (Int, Int) = (second1, second2)
//    change(gamePlace: &gamePlace, position: secondTuple)
//    print(secondTuple)
//    break
//}
//print("Введите координаты третьего корабля:")
//for _ in 0...9 {
//    guard let positionWarship_3 = readLine() else {
//        print("Неверный ввод. Повторите попытку")
//        exit(0)
//    }
//    let separatePosition_3 = positionWarship_3.components(separatedBy: " ")
//    //две проверки на то, что введены именно цифры
//    guard let third1 = Int(separatePosition_3[0]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard let third2 = Int(separatePosition_3[1]) else {
//        print("Вы ввели не координату")
//        continue
//    }
//    guard 1...size ~= third1 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//    guard 1...size ~= third2 else {
//        print("Число не в диапазоне значений")
//        continue
//    }
//    let thirdTuple: (Int, Int) = (third1, third2)
//    change(gamePlace: &gamePlace, position: thirdTuple)
//    print(thirdTuple)
//    break
//}
////далее надо заполнить полученные значения в исходную таблицу, заменяя нули на единицы
////почему-то не работает с 5ками
//func change(gamePlace: inout [[Int]], position: (Int, Int) ) {
//    for (i, row) in gamePlace.enumerated() {
//        for (j, _) in row.enumerated() {
//            if i == position.0 && j == position.1 {
//                gamePlace[position.0 - 1][position.1 - 1] = 1
//            }
//
//        }
//    }
//}
//
//for (i, row) in gamePlace.enumerated() {
//    for (j, _) in row.enumerated() {
////здесь мы должны сделать проверку на то, что все элементы 0, если же нет, то идем в следующую итерацию
//        //мы сравниваем все элементы j по строке i
//        if gamePlace[i][j] != 1 {
//            print(j + 1)
//        } else {
//            continue
//        }
//    }
//}

//затем необходимо вывести сначала все строки, где нет элементов и затем все столбцы




// MARK: - Четырнадцатая задача



//Пароль трудно взломать, если он содержит не менее A прописных букв, не менее B строчных букв, не менее C цифр и содержит ровно N символов. Также пароль не может содержать два или более одинаковых символа, идущих друг за другом. Для заданных чисел A, B, C, N необходимо вывести пароль, соответствующий этим требованиям.
//Гарантируется, что A, B, C и N неотрицательные целые числа и A + B + C <= N. Имейте в виду, что любой параметр может быть равен нулю. Это означает, что ничего страшного, если пароль не содержит символов такого типа.
//
//Пример ввода 1:
//3 4 1 8
//Пример вывода 1:
//PaSsw0rD


var countPassword = 0
print("Введите минимальное количество прописных букв")

for _ in 0...9 {
    guard let enterLowCaseLetters = readLine() else {
        print("Неверный ввод. Повторите попытку")
        exit(0)
    }
    guard let lowCaseLetters  = Int(enterLowCaseLetters) else {
        print("Вы ввели не длину пароля")
        continue
    }
    countPassword += lowCaseLetters
    break
}
print("Введите минимальное количество заглавных букв")
for _ in 0...9 {
    guard let enterUpCaseLetters = readLine() else {
        print("Неверный ввод. Повторите попытку")
        exit(0)
    }
    guard let upCaseLetters  = Int(enterUpCaseLetters) else {
        print("Вы ввели не длину пароля")
        continue
    }
    countPassword += upCaseLetters
    break
}

print("Введите минимальное количество цифр")
for _ in 0...9 {
    guard let enterCountNumbers = readLine() else {
        print("Неверный ввод. Повторите попытку")
        exit(0)
    }
    guard let countNumbers  = Int(enterCountNumbers) else {
        print("Вы ввели не длину пароля")
        continue
    }
    countPassword += countNumbers
    break
}

print("Введите размер пароля")
print("Размер пароля не может быть меньше \(countPassword)")

for _ in 0...9 {
    guard let enterLengthPassword = readLine() else {
        print("Неверный ввод. Повторите попытку")
        exit(0)
    }
    //две проверки на то, что введена именно цифра
    guard let lengthPassword  = Int(enterLengthPassword), lengthPassword > countPassword else {
        print("Введите корректную информацию")
        continue
    }
    break
}

//проверяем есть ли рядом стоящие элементы
func isSame(mass: String) -> Bool {
    var flag = false
    var outputWord = [Character]()
    
    for character in mass {
        outputWord.append(character)
    }
    
    for item in 1...outputWord.count {
        if outputWord[item] == outputWord[item - 1]{
            flag = true
            break
        } else {
        flag = false
        }
    }
   
    return flag
}

print(randomString(lowCaseLetters: lowCaseLetters, upCaseLetters: upCaseLetters, countNumbers: countNumbers))
//для генерации каждого из блоков делаем отдельный словарь из заглавных, строчных и цифр и генерируем рандомно по частям его String((0..<length).map{ _ in letters.randomElement()! })
//затем конкатенацией объединяем пароль и в цикле мешаем его элементы до тех пор пока рядом не будут стоять одинаковые элементы
func randomString(lowCaseLetters: Int, upCaseLetters: Int, countNumbers: Int) -> String {
    //задаем пуст
    var endString = ""
    let lowLetters = "abcdefghijklmnopqrstuvwxyz"
    let upLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let numbers = "0123456789"
    let randomLowLetters = String((0..<lowCaseLetters).map{ _ in lowLetters.randomElement()! })
    let randomUpLetters = String((0..<upCaseLetters).map{ _ in upLetters.randomElement()! })
    let randomNumbers = String((0..<countNumbers).map{ _ in numbers.randomElement()! })
    endString = randomLowLetters + randomUpLetters + randomNumbers
    for _ in 0...100 {
        if !isSame(mass: endString) {
            endString = String((0..<endString.count).map{ _ in endString.randomElement()! })
            break
        }else {
            continue
        }
    }
    return endString
}


// MARK: - Пятнадцатая задача



//Вы хотите взломать сайт и получить все доступные параметры. Выведите их « ключ : значение ». Если параметр не имеет значения, выведите « not found ».
//Если вы найдете пароль (параметр pass ), вы должны еще раз вывести его значение после всех параметров, но уже с ключом password . Если URL-адрес не содержит параметра pass , ничего не печатайте после параметров. Но если присутствует параметр pass , его значение не может быть пустым
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











// MARK: - Шестнадцатая задача


//Все буквы английского алфавита делятся на гласные и согласные.
//Гласные: аa, e, i, o, u, y.
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


// MARK: - Двадцатая задача

//Напишите программу, которая читает строку и выводит trueтолько тогда, когда буквы этой строки образуют подстроку упорядоченного английского алфавита, например, «abc», «xy», «pqrst».
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


// MARK: - Двадцать вторая задача

//Напишите программу, которая читает строку и проверяет, является ли она палиндромом, т.е. читает одинаково как слева направо, так и справа налево.
//Программа должна вывести «yes» , если строка является палиндромом, и «no» в противном случае.
//
//Sample Input 1:
//kayak
//Sample Output 1:
//yes

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


// MARK: - Двадцать четвертая задача

//Выполнить Проект ‘Соедини Четыре’:
