const print = @import("std").debug.print;

const AError = error{
    ErrorA1,
    ErrorA2,
};

const BError = error{
    ErrorB1,
    ErrorB2,
};

const CError = AError || BError;

pub fn main() void {
    const err1: CError = CError.ErrorA1;
    const err2: CError = CError.ErrorB2;
    print("{}, {}", .{ err1, err2 });
}
