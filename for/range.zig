const print = @import("std").debug.print;

pub fn main() void {
    for (1..6) |i| {
        print("{}, ", .{i});
    }
}
