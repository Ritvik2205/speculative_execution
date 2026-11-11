.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test al, bl
xor cx, -18
xor cl, sil
and cl, bl
or al, -78
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
btc cx, 115
and bl, 68
xor al, -89
or dl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor al, -26
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
