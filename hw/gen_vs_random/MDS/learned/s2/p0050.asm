.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
or al, sil
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
or dl, al
or dil, 12
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
test rbx, 27
jmp .bb_0.1
.bb_0.1:
or dl, cl
or cl, bl
xor cl, 24
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
