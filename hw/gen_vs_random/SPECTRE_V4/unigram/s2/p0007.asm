.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
cmovno rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
test dl, -125
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
cmovl bx, di
bts eax, 55
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
adc ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 71
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
sub dil, -28
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
dec rax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
or rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
movsx ax, cl
sbb bl, -79
cmovle rdx, rcx
cmovp rbx, rax
neg esi
btr ax, si
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
btc eax, ebx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
cmp bl, -79
or dl, dl
cmovnp eax, ebx
mov rdx, rdi
test cl, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 3
add cl, -20 # instrumentation
adc bl, cl
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
bt rdx, rdi
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
add eax, 544045319
xor al, bl
sub al, 69
cmovb ebx, edx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
