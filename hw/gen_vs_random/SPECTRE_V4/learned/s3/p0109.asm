.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -13169
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
add bl, -109 # instrumentation
sbb edx, 78
xor sil, sil
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 12
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 75
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
sub eax, 2030845821
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
inc al
cmovl dx, ax
and rax, 89
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 26
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 86
xor di, cx
adc ax, ax
xor al, cl
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sbb al, -62
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
xor cl, al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and dl, dil
and rbx, 110
sub al, 98
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmovb esi, edi
sbb cl, -104
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
cmovnbe edi, edx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
add esi, -5
cmovz rdi, rdx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
sub al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
