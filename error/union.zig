const print = @import("std").debug.print;

const MyError = error{
    OutOfRange,
    NotFound,
};

pub fn main() void {
    var value: MyError!u8 = 32;
    var unwrap = value catch 0;
    print("Value: {}\n", .{unwrap});

    value = MyError.OutOfRange;
    unwrap = value catch 0;
    print("Value: {}", .{unwrap});
}
