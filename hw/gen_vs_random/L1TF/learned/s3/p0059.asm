.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and al, bl
and cl, 46
cmovno rdx, rdi
sub cl, al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or sil, bl
xchg eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
