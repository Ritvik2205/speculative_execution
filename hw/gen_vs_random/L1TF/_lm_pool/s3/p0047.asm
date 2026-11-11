.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 89
test sil, 29
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea rax, qword ptr [rcx + rdx]
xor dil, sil
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
and dil, -22
lea dx, qword ptr [rsi + rbx]
xor al, 89
sub cl, -49
not cl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
