.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor ax, -16696
xor cl, sil
and rax, -2058103810
test al, sil
or dl, cl
xor al, -19
btc di, 233
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
