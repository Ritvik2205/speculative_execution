.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
xchg sil, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub di, 40
test bl, -8
sbb dl, 127
and al, cl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sub al, 63
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
