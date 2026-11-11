.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
or ax, 12618
setnp cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 93
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, 32 # instrumentation
sbb bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
adc al, 18
test ecx, 729805876
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
