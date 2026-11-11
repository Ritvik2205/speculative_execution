.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and cl, dil
xor al, dl
or al, -75
or dil, -41
or rax, 52
and al, cl
or dl, 85
xor dl, bl
btc di, 233
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
bt dx, bx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
