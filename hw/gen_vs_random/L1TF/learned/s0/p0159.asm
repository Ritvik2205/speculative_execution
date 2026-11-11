.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
adc al, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
inc dl
jmp .bb_0.3
.bb_0.3:
or eax, -401020526
sub ecx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
