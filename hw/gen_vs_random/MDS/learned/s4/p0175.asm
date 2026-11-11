.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rax, 1250429750
test bl, 65
jmp .bb_0.1
.bb_0.1:
or dl, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
or al, 37
test sil, dil
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
