.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
add rsi, 109
xchg eax, edi
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
sub dl, dil
or bx, 9
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
