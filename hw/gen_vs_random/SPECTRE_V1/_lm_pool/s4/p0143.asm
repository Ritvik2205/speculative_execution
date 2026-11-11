.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
sub al, sil
xchg rax, rdi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
adc edx, 9
add cl, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
mov al, dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
