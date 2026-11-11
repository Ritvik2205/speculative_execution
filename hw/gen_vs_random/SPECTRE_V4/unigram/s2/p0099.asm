.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
sub rcx, 83
sub cl, 116
sub ebx, 69
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
imul cx, ax
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 1
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
or cl, 73
add edi, 11
movzx eax, bl
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 93
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb cx, ax
cmp cl, 30
add dl, 56 # instrumentation
cmovle rcx, rdx
add edi, edx
dec rsi
or rbx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
btc si, 22
add cl, -10 # instrumentation
cmovnbe ecx, edi
xor sil, dil
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
cmovnbe rdi, rsi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 78
test edx, eax
cmp rsi, 14
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 96
sbb dil, 86
and dil, sil
movzx ax, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
add al, -75 # instrumentation
adc al, 79
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovnle di, ax
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
test si, dx
add dil, dil
test dl, 19
adc rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
