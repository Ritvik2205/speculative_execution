.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
or al, -24
and bl, 68
or al, -61
bt dx, ax
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and ax, -16061
and ax, -4410
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
xor dl, 34
and dx, 3
test rsi, 66
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
xor dl, 8
btc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
