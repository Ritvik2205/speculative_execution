.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and esi, 55
add dl, dl
bt edi, 19
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 34
cmp rcx, 99
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
mov bl, bl
cmovnl rdx, rcx
test dil, al
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
cmovnle edi, eax
sbb bx, 81
adc edi, 45
cmovnb ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
cmovnb esi, edx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 76
and cl, dil
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
sbb sil, 108
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
mov rax, -8696242625349627833
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 95
sbb bx, 21
add rbx, 46
cmovnp si, si
test edx, 573099753
xor eax, esi
sbb dl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 92
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 95
btr ax, di
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
sbb eax, -1688332460
mov bl, 41
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 11
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
mov rbx, rdx
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
