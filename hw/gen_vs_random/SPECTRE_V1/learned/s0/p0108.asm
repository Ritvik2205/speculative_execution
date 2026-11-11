.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, esi
cmovno ax, di
sub dl, 71
or dl, 41
xor al, 78
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, 55
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
adc bl, al
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
