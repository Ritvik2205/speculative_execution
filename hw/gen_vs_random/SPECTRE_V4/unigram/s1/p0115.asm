.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 10
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
cmovnp rax, rsi
neg ax
and cl, dil
cmovle rax, rcx
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 24
bt edx, edi
btc ax, 32
adc cl, -85
or ebx, -78
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
adc dil, al
cmp rcx, -121
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
imul sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
btr si, 114
or ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
and eax, -784085938
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
movzx ax, dl
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
bswap rbx
add bl, -84 # instrumentation
cmovb ax, dx
and dx, bx
add dl, dl
or dil, cl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and bl, sil
bt esi, 42
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
cmovnp ax, cx
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
