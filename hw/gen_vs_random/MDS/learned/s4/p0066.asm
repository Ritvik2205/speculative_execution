.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
bts rsi, rbx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
test al, dl
and rbx, 65
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 89
test dl, cl
bt cx, ax
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
jmp .bb_0.3
.bb_0.3:
test dil, sil
test al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
