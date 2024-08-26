const print = @import("std").debug.print;

pub fn main() !void {
    var x: u8 = 10;
    {
        defer x += 1;
        defer x *= 2;
        print("X: {}\n", .{x});
    }
    print("X: {}\n", .{x});
}
