.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
or eax, -1434249782
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
xchg dx, si
dec cx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 82
cmovle si, si
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 98
cmovnp ecx, ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 49
cmovs edx, edi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
sub bl, bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sbb cl, -104
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, ebx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
test rcx, -2118888343
adc al, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
imul esi, edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 76
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
movzx rax, di
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
