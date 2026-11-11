.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
add al, 10
or dil, 98
and cl, sil
cmp rbx, 15
lea rbx, qword ptr [rcx + rax + 33]
lea dx, qword ptr [rbx + rsi + 60]
and bl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
