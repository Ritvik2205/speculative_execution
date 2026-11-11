.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
neg rbx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor dl, -66
movsx ax, al
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 85
sub eax, -494922880
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
or rsi, rbx
bt edx, 15
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 41
cmovo edx, ecx
sub dl, 107
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add dl, cl
test cl, -10
add bl, dil
sub bl, cl
xor rax, 944027678
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add dl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
test dil, -83
cmovl di, bx
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
add bl, 95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
adc bl, dil
xor cl, bl
bt edi, eax
cmovnle dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
