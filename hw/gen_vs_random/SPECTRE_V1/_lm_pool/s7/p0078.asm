.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
test al, 34
sub al, dl
sub rdi, 77
xor bl, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 33
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
