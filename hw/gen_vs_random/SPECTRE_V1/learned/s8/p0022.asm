.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
and dil, dil
test cl, -120
sub sil, -18
sub cl, al
cmp eax, -563371897
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
