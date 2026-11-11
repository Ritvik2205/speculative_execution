.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rax, rcx
movzx dx, dl
cmovle dx, dx
adc rsi, 49
or di, ax
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sub rbx, 58
sbb ecx, 19
or edi, 28
cmp si, 9
cmovnl rbx, rcx
imul edi, ebx, 37
cmp dl, al
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 91
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovnbe rax, rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
test dil, 31
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 28
mov rdx, rsi
imul bx, dx, 70
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 95
xchg esi, ecx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
add cl, -37 # instrumentation
adc ebx, 60
imul edi, edx, 37
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 46
movzx ax, dil
xor al, 102
and eax, -37
cmovo rax, rsi
and bl, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
add si, si
mul ax
xor eax, -437098167
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmp bx, 53
imul eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
