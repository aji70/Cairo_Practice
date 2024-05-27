fn mainn() {
    let mut a = ArrayTrait::new();
    a.append(9);
    a.append(10);
    a.append(1);
    a.append(2);

    let first_value = a.pop_front().unwrap();
    println!("The first value is {}", first_value);
}
fn main1() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    let index_to_access =
        5; // Change this value to see different results, what would happen if the index doesn't exist?
    match arr.get(index_to_access) {
        Option::Some(x) => {
            *x
                .unbox() // Don't worry about * for now, if you are curious see Chapter 4.2 #desnap operator
        // It basically means "transform what get(idx) returned into a real value"
        },
        Option::None => { panic!("out of bounds") }
    }
}
fn main() {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(1);

    let first = *a.at(0);
    let second = *a.at(1);
}