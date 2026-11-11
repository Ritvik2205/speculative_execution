.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdx + rsi + 40]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
add dl, 71 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
cmp ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ecx
and dil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
sub bl, -19
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
