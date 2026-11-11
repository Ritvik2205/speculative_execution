.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
cmp rcx, 55
sbb al, -107
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
cmp al, -77
lea rax, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
