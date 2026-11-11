.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
btr dx, si
jmp .bb_0.4
.bb_0.4:
btc di, 164
and bl, dil
and rax, -1931765367
and al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
