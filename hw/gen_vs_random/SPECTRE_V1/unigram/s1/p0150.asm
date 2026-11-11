.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
sub dl, al
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
test ebx, -1465665890
adc rsi, 110
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
