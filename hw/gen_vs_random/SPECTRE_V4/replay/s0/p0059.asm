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
add al, -4
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmovs rcx, rax
dec cl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb cx, 106
test si, ax
cmp al, -1
test ax, -6584
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor cl, bl
cmovnb esi, edx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and al, -124
adc al, -70
or eax, 185586366
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
neg rbx
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
xchg dl, dl
and al, bl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
mul ax
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
or ax, -30990
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
imul sil
movsx bx, al
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
