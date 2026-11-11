.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
or dil, 12
xor cl, 98
test bx, 25542
and ax, 13090
or bl, al
jmp .bb_0.1
.bb_0.1:
test cl, -18
and esi, 21
btc ax, bx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 47
test dl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
