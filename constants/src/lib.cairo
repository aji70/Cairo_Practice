fn main1() {
    let x = 5;
    let x = x + 1;
    {
        let x = x * 2;
        println!("Inner scope x value is: {}", x);
    }
    println!("Outer scope x value is: {}", x);
}
fn main() {
    let x: u64 = 2;
    println!("The value of x is {} of type u64", x);
    let x: felt252 = x.into(); // converts x to a felt, type annotation is required.
    println!("The value of x is {} of type felt252", x);
}