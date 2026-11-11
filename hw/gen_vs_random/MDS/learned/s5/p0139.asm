.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
or dil, al
not cl
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor bl, -27
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or cl, al
or al, 74
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor al, -26
test cl, -86
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and bx, 25
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
