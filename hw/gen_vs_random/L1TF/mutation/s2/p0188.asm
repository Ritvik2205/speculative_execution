.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
lea edx, qword ptr [rbx + rbx + 24069]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb al, 61
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
or di, di
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
cmovp eax, esi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
add al, 66 # instrumentation
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
