.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or cl, 7
and rax, 452940266
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
xor dl, bl
test al, bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
test cl, bl
and ax, 13090
test edx, -1561252782
and ax, -4410
test rsi, 83
bt di, dx
test dil, sil
xor al, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
