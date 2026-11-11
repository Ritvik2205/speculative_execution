.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 38
xor al, -19
add al, 10
cmp dl, -115
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add al, al
sub dil, cl
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
