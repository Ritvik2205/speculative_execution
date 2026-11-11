.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 41
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
bts bx, cx
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor sil, -15
xor cl, sil
test sil, cl
test dil, -80
jmp .bb_0.1
.bb_0.1:
test al, 91
xor sil, al
or dl, cl
test rdx, 70
and rsi, 37
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
