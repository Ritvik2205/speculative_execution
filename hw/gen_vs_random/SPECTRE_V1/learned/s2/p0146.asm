.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
sub al, -1
sbb al, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
bt ecx, 204
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
