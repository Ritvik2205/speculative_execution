.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
mov esi, eax
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add dil, dil
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
cmovnp ax, bx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
setno dl
sbb eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
lea rcx, qword ptr [rbx + rdx + 82]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
