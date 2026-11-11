.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 93
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
test dl, al
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc sil, cl
xor edi, 99
add dil, 88
and rax, 1163013815
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
