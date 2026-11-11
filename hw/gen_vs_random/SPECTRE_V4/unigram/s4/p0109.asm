.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
inc eax
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
neg rdx
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
or cl, 83
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
adc dl, sil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
add cl, 87 # instrumentation
cmovz eax, ecx
sub sil, 71
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
cmovp rax, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
movzx rbx, dx
bts esi, 18
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ecx
cmp cl, al
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
adc dl, 23
add al, al
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and bl, bl
cmovbe ax, cx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
sbb dil, 43
add al, -65 # instrumentation
adc sil, al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
add al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
adc dil, 38
adc rbx, rcx
xor sil, 37
sbb rax, 59
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
bts edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
