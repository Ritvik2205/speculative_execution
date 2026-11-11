.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 8 # instrumentation
adc al, dil
test bx, -1599
sub bl, al
cmovnp rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
adc bl, 89
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
add al, 5
cmovnle edi, eax
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
adc ecx, -12
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
test dl, dil
adc bl, al
and bl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
add rdi, 105
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
cmovnp si, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmp dx, cx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
mul cl
cmp dl, al
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
adc cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
