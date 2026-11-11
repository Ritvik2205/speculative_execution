.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 30
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
xchg rsi, rdi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
setp cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
xor rbx, -34
add di, 44
sbb edx, 105
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
