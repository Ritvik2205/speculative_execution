.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, dx
test al, -81
or sil, dil
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
and ax, -10351
xor al, dil
btc edi, 230
xor cx, -18
test sil, cl
and ax, -122
and rcx, -63
xor cl, 98
test sil, dl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
