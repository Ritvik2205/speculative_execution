.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 31
test rcx, -2118888343
sbb cl, 19
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
xchg rbx, rsi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
xor cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rsi, 72
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
movzx rax, di
xor cl, -85
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
neg dl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovs ebx, esi
movzx esi, bl
xor al, 56
xor cl, -85
sub esi, ebx
or edi, 63
cmovs rdi, rcx
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
test sil, 68
add cx, 96
cmovnbe di, si
sub cl, -74
add cl, -37 # instrumentation
adc edx, 75
adc ax, 22
and di, 22
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
neg esi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
adc esi, 90
sbb al, dl
sub edx, edi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
xor al, 29
imul rsi, rdi
test eax, -558243208
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
