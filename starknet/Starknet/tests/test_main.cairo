%lang starknet
from src.main import balance, increase_balance
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.starknet.common.syscalls import get_caller_address

@external
func test_increase_balance{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*}() {
let (result_before) = balance.read();
assert result_before = 0;

increase_balance(42);

let (result_after) = balance.read();
assert result_after = 42;
return ();
}

@external
func test_cannot_increase_balance_with_negative_value{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*}() {
    let (result_before) = balance.read();
    assert result_before = 0;

    %{expect_revert("TRANSCATION_FAILED", "Amount nust be positive")%}
    increase_balance(-42);
    return();
}