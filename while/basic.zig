const print = @import("std").debug.print;

pub fn main() void {
    var count: u8 = 10;
    while (count > 0) {
        count -= 1;
        print("{}, ", .{count});
    }
    print("\nEnd", .{});
}
