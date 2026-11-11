.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or dil, cl
xor al, cl
xor al, cl
and sil, -9
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test cl, -18
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and cx, -8
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
