.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
adc al, 80
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
add bl, 68
btc esi, 71
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
setb cl
lea rdx, qword ptr [rbx + rsi + 64]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
sbb al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
