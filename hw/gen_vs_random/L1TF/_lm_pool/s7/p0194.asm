.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 68
test sil, al
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
cmp dil, 52
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and al, -68
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
lea rdi, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
