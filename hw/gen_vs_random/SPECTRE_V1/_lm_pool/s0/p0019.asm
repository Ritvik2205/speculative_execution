.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
add rax, 6
test bl, -8
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
cmp cl, bl
xor al, al
sbb cl, 105
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
