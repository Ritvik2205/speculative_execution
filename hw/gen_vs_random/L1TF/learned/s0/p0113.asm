.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
add al, al
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
neg sil
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and al, -68
or rax, 1362710293
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or ax, -18131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
