.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
sub al, bl
and cl, 86
cmovno rdx, rcx
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
xchg eax, ebx
cmp al, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
