.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 56 # instrumentation
cmovle rcx, rbx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add bl, -26 # instrumentation
btr ebx, 1
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 54
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
add cl, 8 # instrumentation
adc al, dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
cmp cl, 6
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
mov rdi, 40
bt esi, edi
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 63
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
xchg rdi, rsi
cmovnle dx, dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
sub al, 119
cmovnle dx, cx
cmovb dx, dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
imul rsi
xor rdx, 40
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
dec sil
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 47
not rdi
and rdx, 31
cmovb esi, esi
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
bts rcx, rcx
not ebx
and dil, dl
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
sub dl, 43
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
mov edx, esi
cmovle dx, dx
and cl, 58
sbb dx, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
