const std = @import("std");

pub fn main() void {
    const value: u8 = 32;
    const ptr = &value;
    const deref = ptr.*;

    std.debug.print("Pointer: {}, Deref: {}", .{ ptr, deref });
}
