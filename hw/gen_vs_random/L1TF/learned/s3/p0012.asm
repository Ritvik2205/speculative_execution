.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
or bl, dl
and bl, sil
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
or rax, -82
and eax, -409673666
cmp al, 27
jmp .bb_0.1
.bb_0.1:
test cl, 60
xchg edi, esi
test rcx, 36
adc bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
