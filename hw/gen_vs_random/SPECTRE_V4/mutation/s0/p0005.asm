.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 15671
test dl, bl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
adc sil, 77
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
bts ecx, 0
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
or ebx, eax
test cx, cx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -74
or edx, -83
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmovbe dx, ax
xor al, -66
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 57
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
lock sub byte ptr [r14 + rax], 127
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
cmovle si, di
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
xor eax, 308288205
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
xor rax, rsi
cmp dil, 53
adc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
