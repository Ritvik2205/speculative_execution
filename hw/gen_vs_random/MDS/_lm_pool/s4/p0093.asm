.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
or al, -78
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
test cl, 54
test dl, 9
xor bl, al
bts rbx, rdx
xor al, bl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test dil, 46
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test cl, 54
or bl, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 79
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
