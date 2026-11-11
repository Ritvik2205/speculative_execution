.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
bts si, 158
test bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and bl, bl
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
test al, dl
test bl, -114
or rax, -1561934807
xor cl, dil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
cmovnp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
