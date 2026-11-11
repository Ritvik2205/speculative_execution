.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and ax, 19224
and ax, -16061
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
xor al, dl
btr ax, 193
test sil, 17
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
