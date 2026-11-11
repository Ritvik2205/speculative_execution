.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
add dl, -124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 74
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sub rax, 1451608022
lea rcx, qword ptr [rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdx + rcx + 6]
sbb dl, -23
lea cx, qword ptr [rdx]
movzx cx, al
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
add cl, 105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 96
movzx ax, cl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
