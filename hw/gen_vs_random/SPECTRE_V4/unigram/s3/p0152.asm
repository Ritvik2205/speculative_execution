.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
cmovbe rbx, rsi
adc bl, dl
xchg dil, dil
bt rax, rbx
xchg rcx, rcx
or al, sil
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
xor cl, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
cmovnbe ecx, esi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
sub sil, sil
movzx edi, ax
xor edx, 47
cmp dil, -92
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
cmovb si, cx
sbb al, al
or rax, rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
neg dl
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
cmovnb eax, ebx
btc rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and bl, dl
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
xor si, -73
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
bts ebx, 197
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
cmovle rcx, rsi
xor dil, 117
cmp eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
