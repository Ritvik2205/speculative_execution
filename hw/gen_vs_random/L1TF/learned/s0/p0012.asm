.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 93
cmovnz dx, cx
sbb sil, 19
test rax, 404297506
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
cmp si, 91
cmp al, -119
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
