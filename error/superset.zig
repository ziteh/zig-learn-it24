const print = @import("std").debug.print;

const AError = error{
    Error1,
    Error2,
};

const BError = error{
    Error1,
};

pub fn main() void {
    const err_a = AError.Error1;
    const err_b = BError.Error1;

    if (err_a == err_b) {
        print("Yes", .{});
    }
}
