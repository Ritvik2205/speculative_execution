.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 93
inc rdx
cmovnp di, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
test edx, 573099753
cmovnl rax, rax
xor rdx, rax
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
cmp cl, 7
test cl, -89
add al, -71 # instrumentation
adc al, dl
and cl, 58
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, bx
add dil, 82
add cl, -42 # instrumentation
adc sil, dil
cmovz edx, edx
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmovnle edx, ecx
sub al, 119
and dil, bl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
xchg si, dx
cmovle rbx, rax
sbb cl, -104
xor dx, 40
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmp bl, dl
cmovnbe bx, si
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 12
cmovnl rax, rdi
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
cmovl rax, rsi
cmovnl rsi, rsi
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
btc si, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
