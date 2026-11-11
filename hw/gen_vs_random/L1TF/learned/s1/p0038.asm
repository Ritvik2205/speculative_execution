.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
xor rax, -2072052278
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
test rsi, rcx
add cl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
