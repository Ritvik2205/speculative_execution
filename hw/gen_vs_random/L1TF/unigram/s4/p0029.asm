.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add bl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
or rax, 1447934463
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add al, 65 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 35
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
add dil, bl
jmp .bb_0.1
.bb_0.1:
adc rbx, 75
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 51
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 22
lea rdi, qword ptr [rdx + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
imul rsi, rsi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
