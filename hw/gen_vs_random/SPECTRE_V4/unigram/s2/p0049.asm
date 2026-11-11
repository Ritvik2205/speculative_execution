.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
mov dil, sil
cmovnle bx, cx
sbb edx, 18
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and al, sil
and ecx, 71
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and ebx, -122
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
test cl, -31
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
sub cl, -119
sub rsi, rcx
add bl, sil
sub sil, 71
and dl, sil
bt cx, di
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or dil, 5
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
dec dl
or edx, -118
xchg dx, di
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
cmovle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
btr rax, 187
add al, 89 # instrumentation
cmovnle ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
bt esi, 59
imul ax, di, 101
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
movzx edi, bl
xor al, cl
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 40
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
