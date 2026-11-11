.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
or si, 94
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and ax, 19740
xor bl, cl
jmp .bb_0.1
.bb_0.1:
or sil, dl
and dl, -73
test cl, bl
and bl, al
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
xor al, dl
and cl, -71
jmp .bb_0.2
.bb_0.2:
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
