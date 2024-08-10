const std = @import("std");

pub fn main() void {
    const array = [_]u8{ 1, 2, 3, 4, 5 };
    const slice1 = array[0..2]; // {1, 2}
    const slice2 = array[0..4]; // {1, 2, 3}

    std.debug.print("Slice 1:\n", .{});
    std.debug.print("  {}, {}\n", .{ slice1[0], slice1[1] });
    std.debug.print("  Length: {}\n\n", .{slice1.len});

    std.debug.print("Slice 2:\n", .{});
    std.debug.print("  Length: {}", .{slice2.len});
}
