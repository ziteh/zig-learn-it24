const print = @import("std").debug.print;

pub fn main() void {
    const a: ?u8 = 10;
    while (a) |value| {
        print("value: {}\n", .{value});
        break;
    }
    print("End\n", .{});

    print("-----\n", .{});

    const b: ?u8 = null;
    while (b) |value| {
        print("value: {}\n", .{value});
        break;
    }
    print("End\n", .{});
}
