.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
or di, di
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
sbb al, -50
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
cmovp eax, esi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
add al, 66 # instrumentation
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
