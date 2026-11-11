.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, bl
sub cl, -47
test al, -126
sub cl, dl
sub cl, -21
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rcx, rbx
lea bx, qword ptr [rsi + rdi]
lea di, qword ptr [rsi]
cmovs dx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
sbb dl, sil
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
