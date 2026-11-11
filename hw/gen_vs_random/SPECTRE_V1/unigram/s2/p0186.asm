.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, al
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
cmp rcx, rax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 56
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 40 # instrumentation
lea ax, qword ptr [rdi + rdi]
lea rsi, qword ptr [rcx + rdi]
setns sil
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
add esi, eax
xor rbx, 35
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
