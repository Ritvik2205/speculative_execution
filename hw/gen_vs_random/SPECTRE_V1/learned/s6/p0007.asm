.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
xor cl, cl
cmp cl, 11
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
or sil, 122
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
and al, -23
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
sbb dl, sil
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
