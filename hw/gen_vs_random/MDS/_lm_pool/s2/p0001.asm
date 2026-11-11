.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor edx, 17
and dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
test edi, -1252846009
and sil, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test rcx, -613256812
and dil, dil
xor cl, sil
xor ax, -16696
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor cl, 98
xor rax, -843636050
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
