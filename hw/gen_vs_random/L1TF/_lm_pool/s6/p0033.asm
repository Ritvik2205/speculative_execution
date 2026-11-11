.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
add dl, -70
lea eax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xchg cl, dil
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
