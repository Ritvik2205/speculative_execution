.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
sub al, dl
sbb al, 118
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 74
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 60
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or eax, 1276549484
lea bx, qword ptr [rbx + rcx]
lea eax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
