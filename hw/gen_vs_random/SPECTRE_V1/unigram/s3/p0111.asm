.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 71
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
and bl, al
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
btc edx, 169
add rdx, 95
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
imul dl
add bl, -126 # instrumentation
cwd
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
