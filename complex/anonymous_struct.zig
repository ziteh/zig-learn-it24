const print = @import("std").debug.print;

pub fn main() void {
    const point = struct { x: i16, y: i16 }{ .x = 100, .y = -10 };
    print("X: {}, Y: {}", .{ point.x, point.y });
}
