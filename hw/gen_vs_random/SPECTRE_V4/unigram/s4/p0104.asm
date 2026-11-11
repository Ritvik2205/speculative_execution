.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
movsx edi, bx
test cl, 78
or bl, -80
and bl, bl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 99
bts di, 72
movzx dx, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
sbb bl, -75
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 48
movsx edi, di
sbb dl, 53
sub ecx, -107
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
imul dx, bx
cmovbe rsi, rdx
cmovb si, ax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
neg rdi
sub dil, al
btc edx, ecx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
add bl, -24 # instrumentation
cmovnbe di, di
adc cl, -85
and rdx, 84
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
add dl, 45 # instrumentation
cmovbe rbx, rcx
and si, -70
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
imul dil
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
test al, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
