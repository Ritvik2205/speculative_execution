.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
bt ebx, 45
xchg al, cl
cmovb si, bx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
