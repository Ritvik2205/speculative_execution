.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
sbb edi, 18
adc rax, -1877286258
lea ecx, qword ptr [rcx]
cmovb eax, eax
adc bl, sil
lea rcx, qword ptr [rax + rdi + 58]
and ax, si
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
lea rdi, qword ptr [rcx + rcx + 89]
cmovle si, si
not dl
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
