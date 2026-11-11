.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
xor dil, 8
test dil, -51
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and cl, al
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or rax, 1461812833
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dl, cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
