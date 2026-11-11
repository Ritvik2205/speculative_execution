.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
cwde
lea rsi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
xor dil, -42
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
