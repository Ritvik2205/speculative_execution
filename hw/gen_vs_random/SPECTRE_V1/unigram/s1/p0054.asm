.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, cl
add cl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 59
setnl al
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
or cx, 36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
lea rbx, qword ptr [rax]
imul rdi, rcx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
mov dil, 92
sbb bl, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
