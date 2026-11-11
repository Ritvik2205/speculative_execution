.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
add bl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
or cl, al
setle cl
setnb cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 2114064901
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
btc rdx, 95
test al, 70
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, 32 # instrumentation
sbb bl, cl
and eax, 85
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
bts rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
