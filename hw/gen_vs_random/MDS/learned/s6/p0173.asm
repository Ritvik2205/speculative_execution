.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 85
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor dl, -43
test dil, bl
or cl, 7
and cl, cl
test ebx, -2015966884
or rsi, 91
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 40
or sil, -78
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor rcx, -2
or dil, -78
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
test edi, -1252846009
add dl, 9
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
