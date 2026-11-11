.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
mov bl, bl
sub rbx, 44
xor dl, -91
movzx si, cl
cmovnp edx, eax
add rax, rdi
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovnb rbx, rcx
add ebx, 96
sbb rsi, 71
lea rbx, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 51
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
