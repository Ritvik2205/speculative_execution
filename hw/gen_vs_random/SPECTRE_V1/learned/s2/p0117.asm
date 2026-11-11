.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and bl, 87
xor al, -119
and dil, 98
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
movzx edi, cl
adc dl, 48
and bl, cl
sbb bl, dl
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
