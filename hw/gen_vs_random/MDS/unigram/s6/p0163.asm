.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and dl, -41 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
cmovp bx, cx
test bl, cl
not rcx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
cmovl edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test rax, 1000448998
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
xor eax, eax
and rcx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rcx]
btr bx, ax
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
cmovno rcx, rbx
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor al, 8
cmovs rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
