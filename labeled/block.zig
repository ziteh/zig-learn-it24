const print = @import("std").debug.print;

const DEBUG = false;

pub fn main() void {
    const mode = blk: {
        if (DEBUG) {
            break :blk "Debug";
        } else {
            break :blk "Production";
        }
    };

    print("Running in {s} mode", .{mode});
}
