.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 34
sbb rbx, rcx
sub rdx, 22
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
sbb edx, 15
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
inc rdi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
test cl, -89
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
add ax, -13169
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
bts ebx, 22
adc cl, 46
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
bt eax, 84
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
add rdx, rsi
not esi
cmovnb rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
cmovnbe bx, ax
imul bx
add cl, 122 # instrumentation
cmovz rdi, rax
movzx ebx, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
sub bl, dl
xor dil, 30
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 17
btr rax, rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 12
movzx rdx, dil
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
add si, 4
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
test eax, esi
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
sub ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
