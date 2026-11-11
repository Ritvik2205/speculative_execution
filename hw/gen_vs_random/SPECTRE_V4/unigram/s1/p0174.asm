.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rsi, rcx
add cl, 53 # instrumentation
cmovnbe ebx, ecx
or rcx, rdx
mov al, -71
add dil, -57 # instrumentation
cmovno rdi, rsi
cmovz eax, eax
cmovz rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
adc bl, -58
adc edi, -83
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
mov al, al
bts dx, 96
mov ebx, 51969593
test rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
add dil, -61
xor rcx, -111
xor dil, 37
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
bt rsi, 153
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
mov al, al
movzx rcx, si
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
or rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 73
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
xor rax, 93
cmovle rdi, rdi
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
sbb dl, 75
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
