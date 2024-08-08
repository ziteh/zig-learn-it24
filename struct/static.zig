const std = @import("std");

const Point = struct {
    x: f32,
    y: f32,

    // Static method or constructor
    pub fn init(x: f32, y: f32) Point {
        return Point{
            .x = x,
            .y = y,
        };
    }
};

pub fn main() void {
    const p1 = Point.init(20, 3.5);
    std.debug.print("X: {d}, Y: {d}", .{ p1.x, p1.y });
}
