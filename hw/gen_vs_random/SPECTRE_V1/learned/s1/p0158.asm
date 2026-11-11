.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
or eax, -1161451853
sub cl, -21
sub al, -1
cmp rax, 900122030
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
or ax, -114
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
cmp al, 77
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
