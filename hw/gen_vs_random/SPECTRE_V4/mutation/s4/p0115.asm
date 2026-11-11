.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and al, -118
imul sil
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
imul al
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
cmp al, 75
add al, -82
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
test ecx, esi
movsx rsi, dil
adc al, -117
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
sbb cx, 29
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
btc rbx, 52
mov ecx, -405458789
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
cmovnb esi, edx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
xchg dl, dl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
cmovs rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
neg rbx
test si, ax
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
test ax, -18054
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
movsx bx, al
mul ax
or eax, -1213318393
and al, bl
or ax, 7381
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
