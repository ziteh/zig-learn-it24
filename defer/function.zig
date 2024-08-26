const print = @import("std").debug.print;

var x: u8 = 10;

pub fn main() !void {
    foo();
    print("X: {}\n", .{x});
}

fn foo() void {
    defer x += 1;
    print("X: {}\n", .{x});
}
