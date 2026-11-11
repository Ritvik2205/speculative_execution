.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, esi
sub bl, cl
adc al, -59
imul sil
neg rbx
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
add al, -82
movsx bx, al
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
imul al
test si, ax
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and al, -28
xor cl, bl
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
movsx rsi, dil
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xchg dl, dl
mov ecx, -405458789
or ax, 57
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmp al, 75
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
dec cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
test ax, -18054
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
sbb cx, -114
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
mul ax
or eax, -863161215
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
btc rbx, 52
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
cmovnb esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
