const print = @import("std").debug.print;

pub fn main() void {
    const vec: @Vector(3, i8) = .{ 1, 2, 3 };
    const arr: [3]i8 = vec;
    print("{}, {}, {}", .{ arr[0], arr[1], arr[2] });
}
