.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -31
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
sub cl, al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
lea cx, qword ptr [rbx]
xchg cl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
