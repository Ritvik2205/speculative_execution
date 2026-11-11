.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
sbb ax, -26133
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
mov cl, cl
bt rsi, rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and dl, al
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
cmp dil, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
