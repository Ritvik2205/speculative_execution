.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
mov al, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl edx, edx
test ebx, -1465665890
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
lea rcx, qword ptr [rsi]
and rcx, -29
cmovnle ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
add bl, -121 # instrumentation
setno bl
add bx, -65
neg rax
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
