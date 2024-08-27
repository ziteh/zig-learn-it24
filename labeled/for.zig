const print = @import("std").debug.print;

pub fn main() void {
    outer: for (1..100) |_| {
        for (1..10) |i| {
            print("Value: {}\n", .{i});
            if (i == 4) {
                print("Break\n", .{});
                break :outer;
            }
        }
    }
}
