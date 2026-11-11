.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
test sil, 47
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
sub al, 63
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test al, 40
sbb sil, al
sbb dl, 127
adc cl, bl
lea dx, qword ptr [rbx + rcx]
sub cl, -21
xchg dil, sil
sub cl, -47
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
