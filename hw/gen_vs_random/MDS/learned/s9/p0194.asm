.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
xor bl, dil
xor al, 8
jmp .bb_0.1
.bb_0.1:
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or dil, -78
and sil, cl
jmp .bb_0.2
.bb_0.2:
xor al, 122
test ebx, -961564216
and sil, 74
bt cx, si
xor al, -4
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rax, 41
xor rcx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
