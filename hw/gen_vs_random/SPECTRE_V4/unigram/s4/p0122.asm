.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cl
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
neg esi
test ecx, 17
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
cmovnbe rcx, rbx
sbb bl, 57
inc edi
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 52
or dx, 90
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], ax
cmovo rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
xor bl, 93
adc bl, sil
add bl, -109 # instrumentation
sbb esi, 16
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and cl, 58
bt esi, 227
sub cx, 31
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
test ax, 23760
neg bl
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
inc ecx
cmovnp cx, bx
btc cx, 240
add cl, 122 # instrumentation
cmovz rax, rsi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and bx, 95
or si, 14
xchg rdx, rdi
xor edx, 36
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
cmp al, -52
not ax
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
xor al, cl
add bx, 110
neg cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
