.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 94
and bl, bl
test sil, dl
or al, -75
or al, cl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
xor dl, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 62
and rbx, 65
xor al, 115
and al, 14
and al, 49
and ax, -10351
and dil, dl
jmp .bb_0.1
.bb_0.1:
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
