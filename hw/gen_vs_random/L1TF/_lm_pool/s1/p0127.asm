.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
btr cx, di
jmp .bb_0.1
.bb_0.1:
test rdx, rax
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
xor al, 38
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and si, 20
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
sbb al, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
