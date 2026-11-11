.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
not cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or rax, -141551502
xor sil, -46
test esi, 1857129931
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 51
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
