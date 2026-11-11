.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, 22
adc dil, 24
btc rbx, rdi
cmp cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 8
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 25
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 83
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 8
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
sub ebx, ecx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
sub cl, -74
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
sub edx, 28
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
btc dx, 119
imul sil
cmovz rax, rsi
xor rdx, rcx
add sil, -26 # instrumentation
btr esi, 26
cmp dil, al
imul cl
sub rbx, 94
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
mov rdi, rax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rbx
or ax, si
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 71
bts rdx, 57
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
