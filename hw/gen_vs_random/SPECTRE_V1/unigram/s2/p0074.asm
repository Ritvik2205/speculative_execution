.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
sub eax, -518999763
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 82
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
dec rbx
cmp dx, 13
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
mov sil, 3
or al, cl
and al, al
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
adc dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
