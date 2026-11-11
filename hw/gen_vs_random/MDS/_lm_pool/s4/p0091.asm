.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
xor dl, 8
xor dl, -19
and bx, 24
bt dx, si
test al, -7
test cl, 54
or dil, sil
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and dl, -73
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or al, 16
test rdx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
