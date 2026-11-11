.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
xor si, 80
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
cmovo dx, di
btr eax, ebx
and cl, 49 # instrumentation
cmovp rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test cl, -86
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and dl, al
xor al, al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and sil, -9
test ax, 4430
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and dl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
btr bx, dx
btr edx, ebx
cmovnbe rcx, rdi
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
bts rcx, rbx
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovle rcx, rcx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
cmovbe rcx, rcx
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and dl, -127 # instrumentation
cmovno esi, ebx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
bts ecx, 3
cmovb bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
