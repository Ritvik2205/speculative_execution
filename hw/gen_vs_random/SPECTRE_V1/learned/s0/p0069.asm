.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
mul rcx
sbb dl, 127
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb dil, -106
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb eax, 99727957
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 34
and di, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
