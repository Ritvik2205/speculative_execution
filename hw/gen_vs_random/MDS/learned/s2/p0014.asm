.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
and cl, -111
xor al, 34
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test rbx, 13
test esi, 425331143
test dil, cl
btr esi, eax
btr bx, cx
test rax, -648054011
test dil, cl
test edi, -1252846009
xor dil, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
