const std = @import("std");

const Color = enum {
    red,
    blue,
    green,
};

pub fn main() void {
    const my_color1 = Color.red;
    const my_color2: Color = .blue;

    if (my_color1 == Color.red) {
        std.debug.print("Ok\n", .{});
    }
    if (my_color2 == Color.blue) {
        std.debug.print("Ok", .{});
    }
}
