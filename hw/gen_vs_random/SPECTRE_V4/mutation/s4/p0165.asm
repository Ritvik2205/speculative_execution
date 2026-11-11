.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, edx
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmovs rcx, rax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
sub bl, cl
sbb cx, 29
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
dec cl
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
adc al, 116
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
movsx rsi, dil
test ax, -23852
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
or ax, 28571
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
xchg dl, dl
imul al
add al, -4
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and al, bl
and al, 82
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
neg rbx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
xor cl, bl
btc rbx, 52
mul ax
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
imul sil
test ecx, esi
cmp al, -78
test si, ax
or eax, -612395655
movsx bx, al
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
