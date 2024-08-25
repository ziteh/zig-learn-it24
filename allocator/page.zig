const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    const mem = try allocator.alloc(u8, 128);
    defer allocator.free(mem);

    print("Length: {}\n", .{mem.len});
    print("Type: {}\n", .{@TypeOf(mem)});

    mem[0] = 100;
    mem[127] = 200;
    print("{}, {}", .{ mem[0], mem[127] });
}
