.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
setz dl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
xor al, bl
adc dx, bx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 38 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
bswap ebx
setnl bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
setle al
cmp eax, -563371897
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
test ax, 19339
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
setle dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea cx, qword ptr [rdx]
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
