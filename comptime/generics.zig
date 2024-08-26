const print = @import("std").debug.print;

fn add(comptime T: type, a: T, b: T) T {
    return a + b;
}

pub fn main() void {
    const res1 = add(u8, 5, 10);
    const res2 = add(f32, 100, -10);

    print("Result 1: {d}\n", .{res1});
    print("Result 2: {d}\n", .{res2});
}
