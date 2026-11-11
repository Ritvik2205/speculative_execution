.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
add al, dil
sub dl, bl
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
adc dil, al
lea eax, qword ptr [rdx + rbx]
cmovnbe dx, dx
jmp .bb_0.1
.bb_0.1:
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
lea bx, qword ptr [rax + rbx]
lea cx, qword ptr [rdx]
bt rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 88
adc ecx, 25
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
