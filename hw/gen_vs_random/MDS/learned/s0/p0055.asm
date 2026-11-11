.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
or bl, -52
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or al, dil
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
test bl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
