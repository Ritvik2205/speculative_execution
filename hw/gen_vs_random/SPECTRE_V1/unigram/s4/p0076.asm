.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rax, -175411684
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
lea esi, qword ptr [rsi + rbx + 27]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
inc eax
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
lea bx, qword ptr [rcx + rdi + 29]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
xor rsi, 34
lea si, qword ptr [rsi]
add cl, 11 # instrumentation
cmovns edi, esi
and cx, 58
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
