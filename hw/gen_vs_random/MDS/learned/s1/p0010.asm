.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 91
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
or cl, 30
and cl, dl
or al, -58
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or al, -58
test bl, sil
or cl, -77
jmp .bb_0.1
.bb_0.1:
and eax, 943733866
and dl, dil
or sil, -49
and al, cl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
