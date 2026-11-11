.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
add dl, 125
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 92
or bl, dil
and al, cl
jmp .bb_0.1
.bb_0.1:
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
