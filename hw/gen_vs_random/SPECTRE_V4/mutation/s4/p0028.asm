.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -3
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
adc al, -70
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
dec cl
or eax, -1341747033
and al, 92
imul sil
btc rbx, 52
sbb cx, 106
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or ax, 28571
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
movsx bx, al
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
test ax, 2960
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
test si, ax
and al, bl
xor cl, bl
cmovnb esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
imul al
mul ax
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
cmovs rcx, rax
cmp al, -122
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
movsx rsi, dil
neg rbx
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
mov ecx, -405458789
sub bl, cl
xchg dl, dl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
test ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
