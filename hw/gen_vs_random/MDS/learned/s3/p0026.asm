.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
xor dl, cl
test dil, cl
and dil, cl
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and ax, 31082
or al, -58
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
or rax, -1561934807
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or sil, -49
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
