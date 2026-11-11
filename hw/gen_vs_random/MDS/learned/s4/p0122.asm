.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
or dl, -18
bts ebx, 91
or dl, cl
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
test sil, 79
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and al, -3 # instrumentation
cmovnb ax, dx
xor cl, cl
and dil, 31
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, dx
and cl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xor esi, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
cmovo rdx, rax
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and dl, dil
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
