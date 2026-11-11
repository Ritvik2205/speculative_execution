.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
cmp ax, -11439
jle .bb_0.2
jmp .exit_0
.bb_0.2:
inc edx
inc edx
test bl, -8
lea edi, qword ptr [rcx]
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
