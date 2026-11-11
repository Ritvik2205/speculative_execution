.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
btr si, cx
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
xchg ebx, eax
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
