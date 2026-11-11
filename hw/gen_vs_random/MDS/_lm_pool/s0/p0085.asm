.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
test bl, dl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or rax, 1461812833
and rdx, 86
and dil, -39
test ecx, -1843375753
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or bl, dil
not dil
and eax, -85386306
test dl, -85
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
