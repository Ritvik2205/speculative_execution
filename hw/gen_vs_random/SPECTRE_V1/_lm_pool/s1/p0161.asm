.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 63
sub sil, -18
cmp rsi, 53
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, -68
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
sub ax, -17837
add cl, -127
lea eax, qword ptr [rcx]
sub dl, -48
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
