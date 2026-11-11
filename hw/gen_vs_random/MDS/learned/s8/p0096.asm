.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
test dl, -119
btr di, bx
add al, 54
test dl, -95
or dl, dil
and dl, dl
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or sil, dl
and cl, al
cmovnp rax, rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
bt bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
