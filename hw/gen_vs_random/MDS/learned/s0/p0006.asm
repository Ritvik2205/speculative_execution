.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or dx, 125
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
bts edi, 248
or sil, -49
not bl
xor dl, cl
test rsi, 60
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 66
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 498847670
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
