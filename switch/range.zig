const print = @import("std").debug.print;

pub fn main() void {
    const value: u16 = 5;

    switch (value) {
        0 => {
            print("Zero", .{value});
        },
        1...5 => {
            print("1~5 ({})", .{value});
        },
        else => {
            print("Others ({})", .{value});
        },
    }
}
