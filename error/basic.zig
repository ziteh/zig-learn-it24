const print = @import("std").debug.print;

const MyError = error{
    OutOfRange,
    NotFound,
};

pub fn main() void {
    const err: MyError = MyError.OutOfRange;
    print("{}", .{err});
}
