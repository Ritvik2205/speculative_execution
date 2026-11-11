.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
mov rdx, -3284511739993892328
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
adc cl, 31
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
btc rax, rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmovnp cx, si
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
movsx bx, cl
xor bl, dil
test edx, 1479885278
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
sbb bl, 121
xor rax, -117
bt ebx, ecx
add bl, sil
cmp dil, cl
mov cl, bl
xchg rbx, rax
sbb cl, -69
test bx, 24072
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 49
and bl, dil
sub sil, cl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
sub dil, bl
btr ax, si
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
add sil, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
imul dil
adc esi, 72
add al, -29
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
imul eax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sbb bl, sil
and al, -118
cmovp rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
