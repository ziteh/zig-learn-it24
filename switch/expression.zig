const print = @import("std").debug.print;

pub fn main() void {
    const a: u8 = 10;
    const b = switch (a) {
        0 => 100,
        10 => 110,
        else => 0,
    };
    print("Value: {}", .{b});
}
