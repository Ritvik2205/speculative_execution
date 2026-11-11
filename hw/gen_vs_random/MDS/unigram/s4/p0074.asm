.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 41
or al, 37
and sil, -69
xor al, dl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
or dl, -97
and bl, -128 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
test dil, -51
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test al, sil
and dl, 84 # instrumentation
cmovle di, ax
or sil, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
