.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, rdx
test ebx, edx
setz al
lea rax, qword ptr [rcx + rax + 72]
and rdi, 52
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 47
lea ax, qword ptr [rdi + rax + 3]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
cmp rdx, 74
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
