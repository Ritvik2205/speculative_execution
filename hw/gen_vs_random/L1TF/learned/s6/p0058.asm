.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovnle rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovle si, dx
and dl, 73
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and al, -68
and di, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
