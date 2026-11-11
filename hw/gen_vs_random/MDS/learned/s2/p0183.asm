.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 7
or sil, -78
test al, -81
or rax, -1561934807
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test dl, -95
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 42
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor rcx, 71
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
