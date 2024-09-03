const print = @import("std").debug.print;

pub fn main() void {
    const max = 10;
    comptime var i = 0;

    var sum: u16 = 0;
    inline while (i <= max) : (i += 1) {
        sum += i;
    }

    print("{}", .{sum});
}
