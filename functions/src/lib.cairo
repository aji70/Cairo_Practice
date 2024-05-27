// fn another_function() {

//     println!("Another function.");
// }
fn another_function(x: felt252) {
    println!("{x}");
}


fn print_labeled_measurement(value: u128, unit_label: ByteArray) {
    println!("The measurement is: {value}{unit_label}");
}

fn foo(x: u8, y: u8) {}
fn five() -> u32 {
    5
}


fn main() {
let first_arg = 3;
    let second_arg = 4;
    foo(x: first_arg, y: second_arg);
    let x = 1;
    let y = 2;
    foo(:x, :y);
    println!("Hello, world!");
    another_function(7);
    another_function(5);
    print_labeled_measurement(5, "h");
let x = five();
    println!("The value of x is: {}", x);

    let number = 1_u8; // don't change this line
    println!("number is {}", number);    
    number = 3; // don't change this line
    println!("number is {}", number);

}
