.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb bx, dx
and ax, 16313
bt rcx, 236
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
cmp edx, edx
movzx eax, bl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
adc dil, -15
xor bl, al
btr di, si
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -14386
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
xor cl, cl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
test ecx, 860867711
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and bl, sil
test cx, 7280
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
or ebx, -82
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add eax, -105
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dil, -120
test dl, al
or bl, -80
cmovz ecx, edx
sbb ax, 75
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
cmp bl, al
adc sil, 77
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
