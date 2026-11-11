.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
cmp al, dil
sbb al, -114
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 13
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
add dl, 20 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 40
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
add ax, 8031
sub ecx, edx
and edx, -62
lea dx, qword ptr [rdi + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
