.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
cmp edx, 99
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
sub dl, -78
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and sil, 37
add al, -102
test sil, 29
xor bl, al
cmovnp bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
