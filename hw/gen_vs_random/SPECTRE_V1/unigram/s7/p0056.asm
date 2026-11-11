.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
add dl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
setbe bl
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
btc rdx, rbx
cmovnbe rbx, rsi
sub rbx, rcx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
bt rax, rax
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
add bx, cx
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
setz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
