const print = @import("std").debug.print;

pub fn main() void {
    var count: u8 = 10;
    while (count > 0) {
        count -= 1;
        if (count == 5) {
            continue;
        }
        print("{}, ", .{count});
    }
    print("\nEnd", .{});
}
