.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
xchg edx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
sbb al, cl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, -57
sbb al, dil
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 84
lea rbx, qword ptr [rax + rcx + 32]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
