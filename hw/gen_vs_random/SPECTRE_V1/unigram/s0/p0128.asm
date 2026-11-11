.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 55
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
xor sil, 1
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
lea si, qword ptr [rbx + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmovp esi, eax
cmp ax, 23607
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
xor cx, 15
add bl, 36 # instrumentation
setnl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
