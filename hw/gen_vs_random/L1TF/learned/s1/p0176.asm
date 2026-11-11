.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
or eax, -401020526
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
test ax, 13879
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
inc bl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
add sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
