.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
xor bl, dil
jmp .bb_0.1
.bb_0.1:
mov ebx, 675401645
and rax, 1163013815
and cl, cl
cmp al, 56
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
