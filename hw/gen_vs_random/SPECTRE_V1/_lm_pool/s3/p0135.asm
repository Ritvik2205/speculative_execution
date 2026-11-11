.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 83
adc ax, -614
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
cbw
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
not eax
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
sub bx, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
