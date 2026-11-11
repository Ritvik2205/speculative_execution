.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
not al
and al, -54
test cl, 73
and al, 35
test edx, -372470678
test dl, -85
and sil, sil
xor dil, 124
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or ax, 127
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
