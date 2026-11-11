.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
imul sil
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
cmovs rcx, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and al, 49
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
adc al, 116
and al, bl
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
xor cl, bl
mul ax
or ax, 48
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
sbb cx, 106
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
test ecx, esi
imul al
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
dec cl
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
test ax, -6841
sub bl, cl
movsx rsi, dil
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
cmp al, 114
cmovnb esi, edx
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
or eax, -1341747033
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
neg rbx
movsx bx, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
btc rbx, 52
add al, -112
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
