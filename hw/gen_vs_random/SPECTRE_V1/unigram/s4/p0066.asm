.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 21
cmovb ecx, ebx
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
add cl, 32 # instrumentation
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 64
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
lea rax, qword ptr [rcx + rsi + 54]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rbx], cx
and rdi, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 48
cmovle edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
