const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var stack: [128]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&stack);
    const allocator = fba.allocator();

    const mem = try allocator.alloc(u8, 64); // Note the size
    defer allocator.free(mem);

    print("Length: {}\n", .{mem.len});
    print("Type: {}\n", .{@TypeOf(mem)});

    mem[0] = 100;
    mem[63] = 200;
    print("{}, {}", .{ mem[0], mem[63] });
}
