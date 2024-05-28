use core::array::ArrayTrait;
#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}
fn main()  {
    
    // let mut a = ArrayTrait::<u8>::new();
    // a.append(9);
    // a.append(2);
    // a.append(3);
    // a.append(4);

    // let first_value = a.get(1).unwrap();
    // println!("{}", first_value);


    // let mut arr = ArrayTrait::<u128>::new();
    // arr.append(100);
    // arr.append(9);
    // arr.append(2);
    // arr.append(3);
    // arr.append(4);
    // let index_to_access =
    //     4; // Change this value to see different results, what would happen if the index doesn't exist?
    // match arr.get(index_to_access) {
    //     Option::Some(x) => {
    //         *x
    //             .unbox() // Don't worry about * for now, if you are curious see Chapter 4.2 #desnap operator
    //     // It basically means "transform what get(idx) returned into a real value"
    //     },
    //     Option::None => { panic!("out of bounds") }
    // }

    // let mut a = ArrayTrait::new();
    // a.append(7);
    // a.append(3);

    // let first = *a.at(0);
    // let second = *a.at(1);
    // let first = a[0];
    // let second = a[1];
    // println!("{}", first);
    // println!("{}", second);

    //     let arr = array![1, 2, 3, 4, 5]; is also valid





    let mut messages: Array<Data> = array![];
    messages.append(Data::Integer(100));
    messages.append(Data::Felt('hello world'));
    messages.append(Data::Tuple((10, 30)));

}