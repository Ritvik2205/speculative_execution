.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
or dl, -8
and cl, dil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
jmp .bb_0.1
.bb_0.1:
xor al, 9
or cl, -77
and dl, bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
xor di, 93
or cl, -36
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
