.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor dx, 78
or rdi, -11
test al, -7
and al, dil
xor dl, -43
and dl, al
and al, al
or cl, 6
test dil, sil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
