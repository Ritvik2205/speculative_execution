.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dil
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add sil, 63 # instrumentation
cmovl si, cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
bts esi, ebx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl rax, rax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 32
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
cmovnp si, di
xchg dx, ax
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add bl, 106 # instrumentation
cmovs edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
