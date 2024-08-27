const print = @import("std").debug.print;

pub fn main() void {
    outer: while (true) {
        var val: u16 = 0;

        while (true) {
            print("Value: {}\n", .{val});
            val += 1;

            if (val == 4) {
                print("Break\n", .{});
                break :outer;
            }
        }
    }
}
