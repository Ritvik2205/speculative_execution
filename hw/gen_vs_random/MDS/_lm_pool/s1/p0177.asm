.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and ecx, -104
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
xor rax, -270810088
or cl, 30
and al, 106
and al, bl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
test al, 91
jmp .bb_0.1
.bb_0.1:
or al, dil
cmovle si, ax
bt si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
