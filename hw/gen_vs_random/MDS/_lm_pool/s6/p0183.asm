.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and al, -54
test al, sil
test sil, dl
test al, 22
or cl, dil
xor dl, -43
btr bx, di
and cl, cl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and sil, bl
test rcx, -613256812
or ax, 85
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or rsi, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
