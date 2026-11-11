.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
neg cl
add rbx, rsi
cmovnp rax, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
sbb dl, cl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
not dl
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xchg cx, si
xor eax, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
