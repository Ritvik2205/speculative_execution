.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
sub al, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
neg dil
bts rbx, 75
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
setb al
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
sub dil, -32
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 68
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
