.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor rcx, -2
or al, cl
test sil, 41
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
xor cl, sil
or rsi, 70
test rax, -363019044
test cl, 62
and eax, 366961170
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and ax, -4410
jmp .bb_0.1
.bb_0.1:
or dx, 125
and dl, cl
xor sil, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
