example(of: "selection sort") {
    var array = [9, 4, 10, 3]
    print("Original: \(array)")
    selectionSort(&array)
    print("Selection sorted: \(array)")
}

example(of: "selection sort simple") {
    var array = [9, 4, 10, 3]
    print("Original: \(array)")
    selectionSortSimple(&array, type: .ascending)
    print("Selection sorted ascending: \(array)")
    selectionSortSimple(&array, type: .descending)
    print("Selection sorted descending: \(array)")
}
