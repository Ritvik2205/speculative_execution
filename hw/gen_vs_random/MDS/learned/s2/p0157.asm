.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
xor cl, al
or dl, dil
test cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
test dl, -95
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or dil, -78
bt cx, bx
and rax, 41
and ax, 5001
test al, dl
or cl, al
test al, 66
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
