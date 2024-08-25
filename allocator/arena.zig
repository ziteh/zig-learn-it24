const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit(); // Only free once
    const allocator = arena.allocator();

    // Allocate many times
    const mem1 = try allocator.alloc(u8, 64);
    const mem2 = try allocator.alloc(f32, 128);
    const mem3 = try allocator.alloc(i2, 100);

    print("Length: {}, {}, {}\n", .{ mem1.len, mem2.len, mem3.len });
    print("Type: {}, {}, {}\n", .{ @TypeOf(mem1), @TypeOf(mem2), @TypeOf(mem3) });
}
