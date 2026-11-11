.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 63
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
sbb dl, al
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
cmp rsi, 74
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
mov al, dl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
add dil, cl
movzx ecx, al
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
movsx bx, bl
movsx rsi, bx
cmovno rdx, rsi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
cmovl cx, cx
and rbx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rbx]
or al, -50
xor rcx, 112
mov dil, 52
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 30
test di, -19523
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
sub si, -92
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
cmovnz rax, rcx
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], bx
btc rax, rdi
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
cmp bl, 12
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 28
add bl, 74 # instrumentation
cmovle ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
cmovl bx, ax
or rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
sbb esi, 11
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
mul bl
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
