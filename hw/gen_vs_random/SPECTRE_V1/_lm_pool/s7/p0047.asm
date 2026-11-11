.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
sub cl, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and ax, 23118
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and cx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
