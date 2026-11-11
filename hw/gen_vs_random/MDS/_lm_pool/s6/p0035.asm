.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
xor dil, -70
test al, 127
and ax, 31082
and sil, 89
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or dl, cl
bts rcx, rsi
or al, -24
and dl, -73
bt cx, bx
and ax, 5001
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
