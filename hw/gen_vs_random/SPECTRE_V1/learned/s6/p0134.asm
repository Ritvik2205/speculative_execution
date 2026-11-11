.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
xchg cl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rax, -273199823
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sbb al, dil
and dx, 50
bts eax, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
