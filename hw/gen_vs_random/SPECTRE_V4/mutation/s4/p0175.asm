.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
or ecx, 17
mov al, dl
bswap esi
movsx rdx, ax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
bts rsi, 236
cmovnz rsi, rcx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
mov dx, 22195
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
and al, -118
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 74
mov al, -114
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
add cl, -106 # instrumentation
cmovno rbx, rax
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or dil, 5
and cl, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and dl, dl
sub esi, -10
and ax, 4
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
xor dl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
mov ebx, esi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
