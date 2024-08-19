const print = @import("std").debug.print;

const Packed = packed union { a: u32, b: f32, c: bool };
const Unpacked = union { a: u32, b: f32, c: bool };

pub fn main() void {
    print("Packed size: {} byte\n", .{@sizeOf(Packed)});
    print("Unpacked size: {} byte", .{@sizeOf(Unpacked)});
}
