.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rbx
sub rax, -701741274
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
adc rdx, 98
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
xor bl, 93
xor ebx, esi
movzx rax, dl
sbb edi, 48
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
xchg rcx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmovs rbx, rdx
neg rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
test bl, 24
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
xor al, sil
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
add bl, 110 # instrumentation
movsx si, bl
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 78
add edi, 11
cmp cl, bl
cmovnb bx, bx
cmovns ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
sbb bl, dl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add cl, 122 # instrumentation
cmovz rbx, rsi
imul sil
cmp sil, bl
add sil, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test dl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
sbb al, al
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
