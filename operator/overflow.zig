const std = @import("std");

pub fn main() void {
    // u8: 0~255
    const a: u8 = 255;
    const b: u8 = 2;

    // const nor: u8 = a + b; // Error: overflow
    const wrp: u8 = a +% b; // Wrapping addition
    const sat: u8 = a +| b; // Saturating addition

    std.debug.print("Wrapping:   {}\n", .{wrp});
    std.debug.print("Saturating: {}\n", .{sat});
}
