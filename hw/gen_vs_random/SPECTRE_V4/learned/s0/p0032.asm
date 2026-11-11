.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovl rcx, rsi
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rbx
add cl, bl
imul di, si
add dl, -26 # instrumentation
btr edx, 30
cmovz edx, edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 48
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmp cl, dl
sbb eax, 2051746726
cmp ax, 23131
not rdx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovp rdi, rdx
or al, al
test edi, -1249897727
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 79
not dl
and sil, al
cmp ax, -15031
test si, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 29 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 54
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
bts ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
test eax, -558243208
test al, 66
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
