const std = @import("std");

const Color = enum {
    red,
    blue,
    green,
    others,

    pub fn from_string(str: []const u8) Color {
        if (std.mem.eql(u8, str, "Red")) {
            return Color.red;
        } else if (std.mem.eql(u8, str, "Blue")) {
            return Color.blue;
        } else if (std.mem.eql(u8, str, "Green")) {
            return Color.green;
        } else {
            return Color.others;
        }
    }
};

pub fn main() void {
    const my_color = Color.from_string("Red");

    if (my_color == Color.red) {
        std.debug.print("Ok", .{});
    }
}
