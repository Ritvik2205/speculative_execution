.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor rdi, 11
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 8
add rcx, 76
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
or dx, ax
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
movzx dx, sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 68
sbb sil, al
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
imul rbx, rsi
movsx ecx, dx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
cmovp edx, eax
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
cmovz bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and al, bl
movzx esi, al
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
test ebx, -595096626
imul rax, rdi
cmovle edx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 1
sub dx, 61
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and cx, 17
and al, -127
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 22
cmovnle ebx, edi
mov sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
