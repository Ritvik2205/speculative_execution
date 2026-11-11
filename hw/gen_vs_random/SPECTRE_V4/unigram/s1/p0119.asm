.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
imul sil
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
not rdx
cmovp rbx, rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor dil, 64
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 64
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
cmp ax, 23131
xor rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ebx
and dil, dl
xor dl, 77
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
movzx rdi, bx
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add cl, -37 # instrumentation
adc edi, 31
add dil, sil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovnbe cx, bx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
bswap eax
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rax, rdx
adc dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
