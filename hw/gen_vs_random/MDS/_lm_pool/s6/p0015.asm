.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
xor di, -83
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor ax, -4010
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
test dil, -80
and rax, -636362975
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
