.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
adc bl, -20
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
imul al
and cx, -117
btr rdx, 85
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
or sil, dl
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 20
or rbx, 69
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
sbb edi, eax
sub rax, -1680844889
sbb dl, cl
test bl, bl
cmp al, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
imul edx
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
btr edx, 160
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
mov ax, 31802
mov rbx, 4
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 16
xor cl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 31
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
imul bl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sub bl, dil
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
adc cl, bl
xor rbx, -99
cmovnbe edx, ebx
cmovnp cx, dx
cmp sil, dl
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
xchg eax, ebx
add cl, -50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -32 # instrumentation
cmovp rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
