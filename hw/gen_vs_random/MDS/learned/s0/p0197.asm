.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 5
or al, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
or al, 25
xor sil, dl
test rcx, -613256812
jmp .bb_0.1
.bb_0.1:
test cl, 62
or bl, cl
xor al, -4
test al, -7
jmp .bb_0.2
.bb_0.2:
or al, sil
and dx, 3
jmp .bb_0.3
.bb_0.3:
cmovnp rsi, rax
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
