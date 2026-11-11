.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
cmovnz rax, rbx
mov sil, 62
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
movsx rdx, bx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
bt bx, 23
movzx rax, dx
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
cmovb rcx, rdi
sub dil, 65
adc cl, -54
cmovbe si, cx
dec dx
adc bl, 127
cmovnz rax, rdx
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
test ax, -6841
xor al, al
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
adc cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
add al, 27 # instrumentation
mov cl, al
sub eax, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
add dl, 74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
adc eax, -1127383570
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
test al, -85
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
movzx bx, dil
adc cl, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
neg ebx
adc bl, cl
adc al, -86
cmp dl, 23
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
bts dx, 96
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
