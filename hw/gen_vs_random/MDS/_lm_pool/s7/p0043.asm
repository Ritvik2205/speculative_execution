.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -111
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 16
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
xor cl, 83
and sil, cl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
test rdi, 31
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
test al, sil
xor cl, 83
btr dx, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor bl, dil
and dx, 3
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
