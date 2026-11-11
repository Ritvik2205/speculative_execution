.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 100
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
lea ebx, qword ptr [rsi + rsi + 18]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add al, -102
test esi, 27
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
