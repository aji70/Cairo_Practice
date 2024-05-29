// // #[derive(Drop)]
// // struct User {
// //     active: bool,
// //     username: ByteArray,
// //     email: ByteArray,
// //     sign_in_count: u64,
// // }

// // fn main() {
// //     let user1 = User {
// //         active: true, username: "someusername123", email: "someone@example.com", sign_in_count: 1
// //     };
// //     let user2 = User {
// //         sign_in_count: 1, username: "someusername123", active: true, email: "someone@example.com"
// //     };
// // }

// // fn build_user(email: ByteArray, username: ByteArray) -> User {
// //     User { active: true, username: username, email: email, sign_in_count: 1, }
// // }
// // fn build_user_short(email: ByteArray, username: ByteArray) -> User {
// //     User { active: true, username, email, sign_in_count: 1, }
// // }

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

// #[generate_trait]
// impl RectangleImpl of RectangleTrait {
//     fn area(self: @Rectangle) -> u64 {
//         (*self.width) * (*self.height)
//     }
// }

// fn main() {
//     let rect1 = Rectangle { width: 30, height: 5, };
//     println!("Area is {}", rect1.area());
// }

#[generate_trait]
impl RectangleImpl of RectangleTrait {
    fn area(self: @Rectangle) -> u64 {
        *self.width * *self.height
    }

    fn scale(ref self: Rectangle, factor: u64) {
        self.width *= factor;
        self.height *= factor;
    }

    fn can_hold(self: @Rectangle, other: @Rectangle) -> bool {
        *self.width > *other.width && *self.height > *other.height
    }
}

fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };
    let rect2 = Rectangle { width: 10, height: 40, };
    let rect3 = Rectangle { width: 60, height: 45, };

    println!("Can rect1 hold rect2? {}", rect1.can_hold(@rect2));
    println!("Can rect1 hold rect3? {}", rect1.can_hold(@rect3));
}