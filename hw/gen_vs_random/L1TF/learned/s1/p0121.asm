.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and al, -68
jmp .bb_0.1
.bb_0.1:
and dl, 59
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
xor dil, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
