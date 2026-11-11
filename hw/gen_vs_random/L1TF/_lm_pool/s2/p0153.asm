.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
or al, -57
jmp .bb_0.3
.bb_0.3:
or cl, sil
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
test sil, 29
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
