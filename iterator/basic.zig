const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const string = "C,C++,Python,TypeScript";
    var iter = std.mem.split(u8, string, ",");

    while (true) {
        const item = iter.next();
        if (item == null) {
            break;
        }
        print("{s}\n", .{item.?});
    }
}
