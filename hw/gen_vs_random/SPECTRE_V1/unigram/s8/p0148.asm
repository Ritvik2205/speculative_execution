.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or bx, 9
mul dil
cmovnb ax, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -110
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and cl, -57
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
add bl, -12 # instrumentation
lea rax, qword ptr [rdx + rcx]
inc al
add dil, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
