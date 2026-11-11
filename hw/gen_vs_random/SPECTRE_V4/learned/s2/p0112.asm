.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
sub dl, -16
xor dl, -123
and dx, -107
dec dl
sub dil, -11
adc sil, cl
add al, -127
and al, -1
and bl, 76
sub bx, 24
xor eax, 1185843233
xor dl, -66
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp bl, al
or eax, -863161215
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb al, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
