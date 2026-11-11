.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -1005
not cl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test al, 22
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
xor cl, -13
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dl, bl
and rcx, 107
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
xor cl, 55
and dl, cl
xor dl, -19
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
