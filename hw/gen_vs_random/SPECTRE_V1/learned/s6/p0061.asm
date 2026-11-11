.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 46
not ax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 64
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
or sil, dil
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and al, bl
sbb cl, 105
adc dl, 107
sub al, bl
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
