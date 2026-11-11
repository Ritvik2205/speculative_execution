.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
sbb edx, esi
add cl, bl
add bl, -24 # instrumentation
cmovnbe ax, ax
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
bts esi, edx
cmp cl, dil
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 19
add cl, 91 # instrumentation
adc cl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
and sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
btc ecx, 233
cmp rbx, rbx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
xchg edx, eax
movsx eax, dil
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
test rdx, rax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
movzx ebx, dil
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor dil, cl
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
mov bl, cl
xor edi, esi
adc al, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
bt ecx, edi
xor edx, 87
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
add dl, -59 # instrumentation
movsx eax, sil
mov ebx, eax
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rbx, 1
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
adc eax, -983562873
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
cmovl si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
