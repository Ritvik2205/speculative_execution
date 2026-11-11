.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 80
add esi, eax
imul rdi, rdi, 21
add sil, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], ecx
and dil, dl
cmovp ecx, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
add al, 65 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
bts eax, ecx
xor cl, cl
setl cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
