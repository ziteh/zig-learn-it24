const print = @import("std").debug.print;
const now = @import("std").time.nanoTimestamp;

fn fibonacci(index: u64) u64 {
    if (index < 2) return index;
    return fibonacci(index - 1) + fibonacci(index - 2);
}

fn run() void {
    const number = 25;

    // Run-time
    const start1 = now();
    const res1 = fibonacci(number);
    const end1 = now();

    // Compile-time
    const start2 = now();
    const res2 = comptime fibonacci(number);
    const end2 = now();

    print("Run-time:     {d} in {}ns\n", .{ res1, end1 - start1 });
    print("Compile-time: {d} in {}ns\n", .{ res2, end2 - start2 });
    print("\n", .{});
}

pub fn main() void {
    for (1..6) |_| {
        run();
    }
}
