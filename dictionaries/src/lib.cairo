// fn main() {
//     let mut balances: Felt252Dict<usize> = Default::default();
//     let mut age: Felt252Dict<usize> = Default::default();

//     balances.insert('Alex', 100);
//     balances.insert('Maria', 200);
//     age.insert('Aji', 30);

//     let aji = age.get('Aji');
//     assert!(aji == 30, "wrong age");
//     let alex_balance = balances.get('Alex');
//     assert!(alex_balance == 100, "Balance is not 100");

//     let maria_balance = balances.get('Maria');
//     assert!(maria_balance == 200, "Balance is not 200");
// }


use core::dict::Felt252DictEntryTrait;

fn custom_get<T, +Felt252DictValue<T>, +Drop<T>, +Copy<T>>(
    ref dict: Felt252Dict<T>, key: felt252
) -> T {
    // Get the new entry and the previous value held at `key`
    let (entry, prev_value) = dict.entry(key);

    // Store the value to return
    let return_value = prev_value;

    // Update the entry with `prev_value` and get back ownership of the dictionary
    dict = entry.finalize(prev_value);

    // Return the read value
    return_value
}