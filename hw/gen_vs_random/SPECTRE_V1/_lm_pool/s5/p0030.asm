.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
add dl, 47
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
inc edi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
sbb edx, -8
lea cx, qword ptr [rsi]
lea rsi, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
