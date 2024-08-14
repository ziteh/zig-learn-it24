const print = @import("std").debug.print;

pub fn main() void {
    const number_set = [_]u8{ 1, 3, 4, 5, 7, 8 };

    for (number_set) |num| {
        print("{}, ", .{num});
    }
}
