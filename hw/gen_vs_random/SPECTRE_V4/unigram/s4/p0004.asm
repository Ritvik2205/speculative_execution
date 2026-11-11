.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
adc ax, di
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
cmp dl, dil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
cmovo di, cx
cmp bl, dil
cmovnz rdi, rbx
bt eax, ebx
and rax, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rax]
xor dx, -43
bt rdi, 1
sub dil, -11
btr rcx, 134
test bl, dl
inc si
btr rdx, rbx
adc edx, eax
or rbx, -107
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
btr edi, 54
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
xor al, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
or di, 2
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
mov cl, 14
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
or cl, dil
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
xor edx, edx
and dil, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
sub edx, ebx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edi
and rsi, 0b1111111111111 # instrumentation
xor sil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
imul dx
add cl, -20 # instrumentation
adc dil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 75
adc dx, 49
btr ebx, 156
add cl, -9
not esi
cmovp rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
