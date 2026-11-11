.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
test bl, -114
or cl, 119
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
bts edx, 189
and cl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
jmp .bb_0.1
.bb_0.1:
and ax, 27170
test bl, cl
test al, 127
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
