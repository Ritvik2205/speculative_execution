.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
sub cl, -47
cmp rbx, 83
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 2
sub rdi, 44
sbb bl, dil
cmp ax, 7046
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
