const print = @import("std").debug.print;

const Packed = packed struct {
    bit0: u1,
    bit1: u1,
    bit2: u1,
    bit3: u1,
    bit4: u1,
    bit5: u1,
    bit6: u1,
    bit7: u1,
};

const Unpacked = struct {
    bit0: u1,
    bit1: u1,
    bit2: u1,
    bit3: u1,
    bit4: u1,
    bit5: u1,
    bit6: u1,
    bit7: u1,
};

pub fn main() void {
    print("Packed size: {} byte\n", .{@sizeOf(Packed)});
    print("Unpacked size: {} byte", .{@sizeOf(Unpacked)});
}
