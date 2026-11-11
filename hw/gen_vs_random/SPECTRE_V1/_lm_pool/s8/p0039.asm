.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdi]
test dil, -116
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
xchg al, dl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
lea si, qword ptr [rbx + rdi + 10]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, -108
lea rax, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
