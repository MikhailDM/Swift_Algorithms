example(of: "list") {
    var book = [String: Double]()
    // an apple costs 67 cents
    book["apple"] = 0.67
    // milk costs $1.49
    book["milk"] = 1.49
    book["avacado"] = 1.49
    print(book) // => ["avacado": 1.49, "apple": 0.67, "milk": 1.49]
    print(book["apple"]?.description ?? "Not exist") // => 0.67
    print(book["apple"]?.debugDescription ?? "Not exist") // => 0.67
}

example(of: "voters") {
    var voter = [String : Bool]()
    func checkVoter(_ name : String) {
        if voter[name] != nil {
            print("kick them out!")
        } else {
            voter[name] = true
            print("let them vote!")
        }
    }
    checkVoter("tom")
    checkVoter("mike")
    checkVoter("mike")
}
