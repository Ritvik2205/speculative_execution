.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 81
cmp al, 70
and cl, 58
mov rax, -8696242625349627833
and dl, 5
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
bt esi, ecx
cmovnbe rax, rbx
xor eax, -164167056
mul ax
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
not esi
bt edx, ebx
movzx rdi, sil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
cmovnp eax, eax
imul eax, edx
dec esi
sub sil, bl
add dl, -99 # instrumentation
not eax
xor ax, 25554
mul rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 30
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
or eax, edi
movzx eax, dil
imul rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and bx, 95
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
bts eax, 209
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
test bx, dx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 20
and rsi, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
