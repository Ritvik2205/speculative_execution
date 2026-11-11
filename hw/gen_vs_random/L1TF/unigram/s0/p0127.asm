.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
or bl, -5
cmovnp di, dx
sbb bx, 68
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 11
cmovbe ecx, edi
jmp .bb_0.1
.bb_0.1:
add bl, 68
or bl, al
seto bl
cmovno rax, rdx
setns cl
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
