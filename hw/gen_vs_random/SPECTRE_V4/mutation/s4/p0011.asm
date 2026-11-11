.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx dx, al
not eax
or rax, rbx
bts rdi, 144
or ebx, -82
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, -82
cmovo cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bswap edi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmovbe cx, si
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
add al, bl
cmp edi, edx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
add cl, 7 # instrumentation
adc bx, 70
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor eax, -48271836
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
xor rax, rsi
cmp dil, -92
adc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
