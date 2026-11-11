.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test edi, -1252846009
not bl
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
bts bx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
