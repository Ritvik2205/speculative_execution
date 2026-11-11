.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 41
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 34
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
xor al, bl
xchg al, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and dl, 32
jmp .bb_0.1
.bb_0.1:
test cl, 60
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
