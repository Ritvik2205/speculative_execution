.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
neg rbx
sbb cx, -114
or eax, -1779536330
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
sub bl, cl
imul sil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
cmovnb esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
adc al, 43
add al, 19
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
xor cl, bl
imul al
mul ax
movsx rsi, dil
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovs rcx, rax
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
cmp al, -53
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and al, -1
test ax, 2960
movsx bx, al
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
dec cl
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
test ecx, esi
mov ecx, -405458789
test si, ax
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xchg dl, dl
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
btc rbx, 52
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
or ax, -26182
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
