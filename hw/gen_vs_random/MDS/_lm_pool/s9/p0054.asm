.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
test esi, 425331143
and al, cl
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test cl, -86
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and esi, 16
test al, -81
test al, 91
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
