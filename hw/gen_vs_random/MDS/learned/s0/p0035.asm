.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or sil, al
and dl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
btr ax, dx
and cl, dil
and al, -54
xor al, -89
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
btr di, si
test dl, -119
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
