.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add dil, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jns .bb_0.4
jmp .bb_0.5
.bb_0.4:
jnp .bb_0.5
jmp .exit_0
.bb_0.5:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
