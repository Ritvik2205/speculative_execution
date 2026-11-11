.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
or dl, -97
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor bl, dil
test bl, -114
and bx, 30
or al, al
or al, 74
test ecx, -1843375753
or cx, -42
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
and dl, al
and cl, -6
jmp .bb_0.1
.bb_0.1:
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
