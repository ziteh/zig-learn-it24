const std = @import("std");

const Point = struct {
    x: f32,
    y: f32,

    // Member method
    pub fn add(self: Point) f32 {
        return self.x + self.y;
    }
};

pub fn main() void {
    const p1 = Point{
        .x = 10,
        .y = 123.45,
    };

    const add = p1.add();
    std.debug.print("Add: {d}", .{add});
}
