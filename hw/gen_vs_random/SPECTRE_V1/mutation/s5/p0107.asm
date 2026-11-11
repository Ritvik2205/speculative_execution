.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
xor al, bl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
setz dl
adc dx, bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
add dl, 38 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
setle al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
setnl bl
bswap ebx
cmp eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
