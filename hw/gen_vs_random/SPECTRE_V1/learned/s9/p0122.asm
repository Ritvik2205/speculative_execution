.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
cmovnle rbx, rcx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
or cl, -62
xor bl, dl
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
