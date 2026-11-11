.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, bl
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
test cl, cl
cmovz si, di
test al, 74
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
cmovnbe ax, bx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8830
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
test dl, sil
xor dl, sil
bt cx, 36
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or rsi, 36
test dl, al
sbb bl, 21
xchg bl, cl
bt ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 32
test al, 74
imul esi, edx
xor ax, 2053
cmovnbe di, dx
lea rsi, qword ptr [rbx + rdi]
sub dl, dl
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
