const print = @import("std").debug.print;

const MyError = error{
    OutOfRange,
    NotFound,
};

pub fn main() void {
    const value = do_something() catch |err| {
        print("Error: {}\n", .{err});
        return;
    };
    print("Value: {}\n", .{value});
}

fn do_something() MyError!u8 {
    return MyError.OutOfRange;
    // return 1;
}
