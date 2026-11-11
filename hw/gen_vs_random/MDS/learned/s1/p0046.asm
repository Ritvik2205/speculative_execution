.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 52
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
test esi, 425331143
and bl, 68
bts dx, 50
test al, 127
and rsi, 24
test bx, 25542
btr ax, di
or al, al
and dl, bl
and rdx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
