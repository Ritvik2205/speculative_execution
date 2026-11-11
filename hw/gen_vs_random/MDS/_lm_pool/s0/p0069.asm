.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test al, sil
test bl, -14
and dl, -73
xor cl, 83
or dl, -21
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
xor dl, cl
xor si, 91
xor cl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or sil, bl
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
