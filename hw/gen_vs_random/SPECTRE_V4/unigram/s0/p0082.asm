.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
movsx rcx, di
xchg al, al
sbb sil, -124
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
add bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
bts bx, 102
add dil, 75
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
adc sil, cl
mov rax, -8100960678429780222
cmovb bx, cx
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
adc al, 43
xchg rbx, rdi
btr di, cx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
xor dx, 7
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
xchg rbx, rcx
cmovnp dx, cx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
mov sil, sil
sub rdx, 92
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
cmovnp ecx, edi
test ebx, 29
and bl, cl
add rax, -874478885
add si, dx
cmovb rcx, rcx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 19
or dl, -26
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 24
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 12
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz ecx, eax
sbb dil, dl
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rcx
movsx rsi, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
