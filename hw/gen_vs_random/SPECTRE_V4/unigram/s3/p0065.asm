.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 97
add cl, 8 # instrumentation
adc cl, al
bts ecx, ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
imul dx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
imul dx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
and al, sil
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and dil, 96
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
sub al, 99
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 40
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
dec rax
cmovnb rcx, rsi
cmovnl dx, bx
test dil, bl
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
xor al, 59
test edx, 573099753
cmovz ecx, esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
mov edi, -1544998000
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
adc dl, 81
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 28
test dil, dil
add ecx, esi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
xor al, 59
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 47
dec dil
cmovz cx, cx
test eax, 1561062795
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
