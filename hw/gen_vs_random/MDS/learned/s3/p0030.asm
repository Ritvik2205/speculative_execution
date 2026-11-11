.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
or al, 24
and bx, 40
and cl, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and dil, al
or bl, -54
btr ax, cx
cmovb rax, rsi
and cl, -71
xor dl, al
test dil, -80
and dl, -73
or rax, -141551502
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
