.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
xchg edi, edx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
test rdi, 97
xor cl, al
sub al, -47
jmp .bb_0.1
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
cmovs bx, dx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 68
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
