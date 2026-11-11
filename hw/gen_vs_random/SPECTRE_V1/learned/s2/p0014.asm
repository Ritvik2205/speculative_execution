.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, -54
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -71
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add al, 18
xor al, -74
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
