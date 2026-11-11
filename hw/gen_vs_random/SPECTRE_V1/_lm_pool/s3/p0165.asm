.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and al, cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
setns al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor bl, al
btc bx, dx
xor al, dl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sbb al, 49
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor al, dil
sbb eax, 1392087754
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
