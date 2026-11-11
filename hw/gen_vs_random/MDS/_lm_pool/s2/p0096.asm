.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1640090871
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
xor ax, -4010
xor cl, 83
bts rcx, rbx
bt ax, dx
and cl, -71
or cl, 7
jmp .bb_0.1
.bb_0.1:
and al, 87
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor al, 9
bt ax, bx
xor sil, 27
or al, -17
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
