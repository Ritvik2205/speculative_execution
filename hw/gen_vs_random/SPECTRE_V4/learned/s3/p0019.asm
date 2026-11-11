.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
sbb rax, 183833426
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 43
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xchg rsi, rdi
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
add ebx, edi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub bl, 17
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
xor bx, di
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or si, 41
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
cmovnl si, dx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb bl, bl
test bl, dil
and dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
cmovnz edi, edx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
xchg edi, esi
xor cl, -54
cmovb esi, edi
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
mov sil, sil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 6
or dl, cl
or edx, edi
or eax, 2007177863
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
sub dl, sil
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
lea di, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
