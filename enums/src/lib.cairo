// #[derive(Drop, Copy)]
// enum Message { // TODO: implement the message variant types based on their usage below
//     Quit,
//     Echo: felt252,
//     Move: Point,
//     ChangeColor: (u8, u8, u8),
// }

// #[derive(Drop, Copy)]
// struct Point {
//     x: u8,
//     y: u8,
// }

// #[derive(Drop, Copy)]
// struct State {
//     color: (u8, u8, u8),
//     position: Point,
//     quit: bool,
// }

// trait StateTrait {
//     fn change_color(ref self: State, new_color: (u8, u8, u8));
//     fn quit(ref self: State);
//     fn echo(ref self: State, s: felt252);
//     fn move_position(ref self: State, p: Point);
//     fn process(ref self: State, message: Message);
// }
// impl StateImpl of StateTrait {
//     fn change_color(ref self: State, new_color: (u8, u8, u8)) {
//         let State { color: _, position, quit, } = self;
//         self = State { color: new_color, position: position, quit: quit, };
//     }
//     fn quit(ref self: State) {
//         let State { color, position, quit: _, } = self;
//         self = State { color: color, position: position, quit: true, };
//     }

//     fn echo(ref self: State, s: felt252) {
//         println!("{}", s);
//     }

//     fn move_position(ref self: State, p: Point) {
//         let State { color, position: _, quit, } = self;
//         self = State { color: color, position: p, quit: quit, };
//     }

//     fn process(
//         ref self: State, message: Message
//     ) { // TODO: create a match expression to process the different message variants
//      match message {
//             Message::Quit => self.quit(),
//             Message::Echo(msg) => self.echo(msg),
//             Message::Move(point) => self.move_position(point),
//             Message::ChangeColor(rgb) => self.change_color(rgb),
//         }
//     }
// }


// #[test]
// fn test_match_message_call() {
//     let mut state = State { quit: false, position: Point { x: 0, y: 0 }, color: (0, 0, 0), };
//     state.process(Message::ChangeColor((255, 0, 255)));
//     state.process(Message::Echo('hello world'));
//     state.process(Message::Move(Point { x: 10, y: 15 }));
//     state.process(Message::Quit);

//     assert(state.color == (255, 0, 255), 'wrong color');
//     assert(state.position.x == 10, 'wrong x position');
//     assert(state.position.y == 15, 'wrong y position');
//     assert(state.quit == true, 'quit should be true');
// }

fn find_value_recursive(mut arr: Span<felt252>, value: felt252, index: usize) -> Option<usize> {
    match arr.pop_front() {
        Option::Some(index_value) => { if (*index_value == value) {
            return Option::Some(index);
        } },
        Option::None => { return Option::None; },
    };

    find_value_recursive(arr, value, index + 1)
}

fn find_value_iterative(mut arr: Span<felt252>, value: felt252) -> Option<usize> {
    let mut result = Option::None;
    let mut index = 0;

    while let Option::Some(array_value) = arr
        .pop_front() {
            if (*array_value == value) {
                result = Option::Some(index);
                break;
            };

            index += 1;
        };

    result
}