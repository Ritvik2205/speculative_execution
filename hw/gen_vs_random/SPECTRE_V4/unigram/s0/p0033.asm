.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, edx
add bl, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
add dl, 41
not cx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 98
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ax, si, 71
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
btc di, ax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
add dil, dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
neg edx
test ax, -5170
cmovnbe rsi, rcx
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 61
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdx]
btc rsi, 140
test bl, 24
cmovns cx, si
imul rbx, rsi
xor dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
cmovb edi, ecx
cmp rbx, 14
test dl, al
test edx, 573099753
cmovnbe rsi, rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 9
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
mov dil, -118
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
sub al, 119
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
