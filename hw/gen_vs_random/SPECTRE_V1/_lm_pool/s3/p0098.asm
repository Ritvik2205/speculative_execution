.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
sub al, bl
cmovnle rbx, rdx
sub al, cl
and al, -23
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and al, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
lea rdi, qword ptr [rsi + rax + 41]
sub al, bl
or al, dl
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
