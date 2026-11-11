.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovnbe rsi, rax
btc rax, rdi
imul cl
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
adc al, 69
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
imul dx, ax, 97
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb sil, bl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
xor dl, 33
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovb ebx, ecx
imul dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
adc rdx, rax
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
add bl, -115 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 96
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], esi
bswap eax
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
add cl, 122 # instrumentation
cmovz rax, rdi
sbb bl, -94
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
adc al, bl
sub cl, -74
imul dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
cmovnb edi, ecx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 11
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
adc ecx, -12
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmovns rsi, rcx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and al, dil
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
