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
add al, -6
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
cmp al, 105
test ax, -23852
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
test cl, -10
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
mul dl
sub edx, esi
cmovs ax, cx
sub eax, -865916088
btr ax, bx
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
inc edi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add bl, -91 # instrumentation
inc rdi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cmovnb rdx, rax
cmp rax, -2096157586
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
add eax, 1255256879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
