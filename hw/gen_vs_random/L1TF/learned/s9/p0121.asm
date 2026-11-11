.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
test sil, 29
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 18
adc al, cl
jmp .bb_0.2
.bb_0.2:
sbb cl, dl
jmp .bb_0.3
.bb_0.3:
test dl, -37
and sil, sil
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
