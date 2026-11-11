.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -92285311
test ax, -5170
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
add cl, -42 # instrumentation
adc cl, dil
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
or bl, cl
cmovle dx, dx
add al, 118
add dl, -114 # instrumentation
cmovl ax, cx
xor cl, bl
cmovl rax, rdx
imul bl
sub rbx, 92
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
or dl, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
test edx, 573099753
cmp dil, cl
add dil, 16
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
sbb cl, -104
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and al, -36
test esi, 32
or si, 26
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
add cl, -21 # instrumentation
adc rcx, 36
sbb al, -62
btc rdi, rcx
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, ebx
add sil, 26
add al, 72 # instrumentation
cmovle ax, bx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
add al, al
sbb dx, 91
and al, bl
imul rdi, rax
or dl, al
cmp dl, 17
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
cmovle rsi, rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 51
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
