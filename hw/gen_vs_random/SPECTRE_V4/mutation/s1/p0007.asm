.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, esi
btc rbx, 52
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
movsx rsi, dil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
imul al
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
sub bl, cl
add al, -29
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmovs rcx, rax
dec cl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb cx, 29
test si, ax
cmp al, 116
test ax, -14473
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
add dl, al
not rcx
btr dx, 209
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
btr di, cx
not dx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
add rax, 1049076260
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
sbb bl, 121
cmovnb bx, bx
and ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
bt ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
