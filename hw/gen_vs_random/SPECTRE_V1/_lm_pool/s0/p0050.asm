.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and al, dl
cmovno dx, bx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add al, 18
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 28
lea cx, qword ptr [rbx]
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
