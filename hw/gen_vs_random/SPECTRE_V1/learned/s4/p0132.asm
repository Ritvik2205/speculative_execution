.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
sub dl, cl
xor edi, ebx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -127
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
cmp cx, 88
lea rax, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
