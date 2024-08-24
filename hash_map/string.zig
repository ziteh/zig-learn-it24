const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();
    var map = std.StringHashMap(u8).init(allocator);
    defer map.deinit();

    // Insert
    try map.put("Zero", 0);
    try map.put("One", 1);
    try map.put("Two", 2);

    const value = map.get("One");
    if (value) |v| {
        print("{}", .{v});
    }
}
