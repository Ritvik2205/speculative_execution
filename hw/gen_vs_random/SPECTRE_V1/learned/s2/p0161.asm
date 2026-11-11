.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
mov al, bl
sub bl, -6
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and dil, -93
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
and cl, -57
sbb sil, cl
sub al, -82
add sil, dil
bt ax, di
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
