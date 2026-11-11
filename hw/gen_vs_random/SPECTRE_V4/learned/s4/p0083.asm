.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add eax, esi
add edi, 11
sbb eax, -984782068
add bl, bl
or dl, sil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
adc rax, 1542637830
add eax, esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
mul dil
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
cmovnle eax, esi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
test bx, cx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmovz ebx, ebx
adc sil, bl
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
adc bl, dil
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 78
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
neg ebx
imul rdi, rbx, 36
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
