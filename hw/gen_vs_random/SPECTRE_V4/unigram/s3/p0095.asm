.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec edx
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
cmovo ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 8
cmovl si, cx
or rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
bswap rbx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
add rax, -1121139858
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
adc sil, cl
imul cx, bx
btc eax, 62
mul cl
mov bl, 58
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
cmp sil, 127
cmovnb cx, ax
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
mov rsi, 4368505613814921305
cmovz esi, esi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
btr rdx, rsi
cmovb rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 78
add ebx, -57
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
cmovnb bx, bx
sbb edx, esi
or eax, 1 # instrumentation
add al, 49 # instrumentation
adc al, dil
sbb dil, 79
or al, bl
imul ebx, ebx
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
add bl, -38
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
adc bl, -20
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
