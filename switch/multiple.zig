const print = @import("std").debug.print;

pub fn main() void {
    const value: u16 = 5;

    switch (value) {
        1, 2, 5 => {
            print("1, 2, 5 ({})", .{value});
        },
        3, 4 => {
            print("3, 4 ({})", .{value});
        },
        else => {
            @panic("Unknown");
        },
    }
}
