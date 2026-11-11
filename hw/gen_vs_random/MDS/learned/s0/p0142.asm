.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
test rdi, 97
test cl, dil
test cl, bl
xor bl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
or dl, -89
and rsi, 86
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or al, 54
test bl, dl
test ebx, -2015966884
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
