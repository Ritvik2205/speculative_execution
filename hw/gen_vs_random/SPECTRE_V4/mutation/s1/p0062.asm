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
add al, -3
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
cmovs rcx, rax
dec cl
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
sbb cx, -114
test si, ax
cmp al, 116
test ax, -18054
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor cl, bl
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
sub cl, -32
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
sub eax, -529389957
cmp bl, al
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, sil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or ecx, 17
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
add sil, 3
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnle rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
cmovnbe rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
xor ax, bx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
not rbx
add dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
