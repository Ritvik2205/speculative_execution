.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
xchg rax, rsi
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 55
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 54
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub sil, dil
sub sil, bl
add al, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
