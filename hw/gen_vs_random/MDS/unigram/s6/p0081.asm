.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
cmovnz rax, rdx
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
or al, -61
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and ecx, -104
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or sil, al
not dil
cmovp ecx, ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
test cl, cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], si
and si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
