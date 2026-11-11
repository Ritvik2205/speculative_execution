.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
cmp dl, 51
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
or al, 96
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
cmovb edx, esi
adc bl, al
cmovnle cx, cx
dec dl
sub dl, 43
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 91
sub eax, edi
sub cl, cl
cmovz eax, eax
btc rsi, 225
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
cmp dil, -124
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb cl, bl
imul rdi, rcx, 96
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
bts edi, 167
cmovnbe rbx, rdx
add dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
mov bx, -31043
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
