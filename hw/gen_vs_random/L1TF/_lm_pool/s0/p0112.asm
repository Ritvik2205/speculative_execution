.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, si
or al, -57
or rax, 1362710293
cmovno dx, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 39
inc ecx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and cl, cl
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and bl, 89
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
