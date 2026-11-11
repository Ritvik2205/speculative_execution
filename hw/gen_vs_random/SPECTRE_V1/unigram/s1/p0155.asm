.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
cmp dil, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rbx, rdi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 69
neg al
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
