#[derive(Drop)]
struct User {
    active: bool,
    username: ByteArray,
    email: ByteArray,
    sign_in_count: u64,
}

fn main() {
    let user1 = User {
        active: true, username: "someusername123", email: "someone@example.com", sign_in_count: 1
    };
    let user2 = User {
        sign_in_count: 1, username: "someusername123", active: true, email: "someone@example.com"
    };
}

fn build_user(email: ByteArray, username: ByteArray) -> User {
    User { active: true, username: username, email: email, sign_in_count: 1, }
}
fn build_user_short(email: ByteArray, username: ByteArray) -> User {
    User { active: true, username, email, sign_in_count: 1, }
}
