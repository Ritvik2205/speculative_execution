.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edx, esi
and dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
mov dl, -34
btc dx, ax
or eax, ecx
or cx, 48
test bl, 24
neg bl
cmovo ax, cx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp ebx, 34
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 50
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
cmp si, 85
bt ecx, ebx
cmovnle ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
sbb al, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp al, 114
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
mov sil, al
and sil, -49
test rdi, -1876639003
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
cmovz eax, ebx
sbb rax, rbx
cmovb eax, eax
neg cl
cmovnle ecx, ebx
mul cl
sbb dil, 74
add cl, -117 # instrumentation
cmovs rdi, rax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
sub edx, 54
xor edi, edx
test cl, -89
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
cmovnp rax, rcx
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
