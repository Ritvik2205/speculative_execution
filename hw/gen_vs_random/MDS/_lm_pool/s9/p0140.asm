.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test al, 127
xor bl, -102
test ax, -20900
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor cl, 83
and rax, 1886208862
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
btr rsi, 207
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and bl, 68
test cl, -86
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
