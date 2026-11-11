.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, di
and cl, 91 # instrumentation
cmovle rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 47
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
test dil, dil
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
bt edi, 225
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
cmovl ecx, eax
or al, sil
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
