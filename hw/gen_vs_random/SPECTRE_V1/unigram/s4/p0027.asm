.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
add cl, -26 # instrumentation
cmovnp ax, dx
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 63
cmovnl eax, esi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor si, 23
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 39
cwd
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
